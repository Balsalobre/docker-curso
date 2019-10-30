# Contenedores

1. Son una instancia de ejecución de una imagen.
2. Son temporales. Si queremos que un cambio sea persistente debemos definirlo en el dockerfile.
3. A diferencia de las imágenes en un contenedor si podemos leer y escribir ficheros rw.
4. Podemos crear varios contenedores partiendo de una sola imagen.

Correr un contenedor en 2º plano con la imagen de jenkins oficial ejemplo:
- docker run -d jenkins

Borrar un contenedor:
- docker rm -f "NOMBRE"

Borrar todos los contenedores de golpe:
- docker ps -q | xargs docker rm -f

Borrar TODOS los contenedores desde un inicio:
- docker rm -fv $(docker ps -aq)

Renombrar un contenedor 1º nombre 2º nombre nuevo:
- docker rename awesome_johnson jenkins

Detener un contenedor:
- docker stop "NOMBRE_DEL_CONTENEDOR" o "ID_CONTENEDOR"

Iniciar un contenedor:
- docker start "NOMBRE_DEL_CONTENEDOR" o "ID_CONTENEDOR"

Reiniciar un contenedor:
- docker restart "NOMBRE_DEL_CONTENEDOR" o "ID_CONTENEDOR"

Entrar al bash del contenedor: (-ti --> terminal interactivo)
- docker exec -ti jenkins bash
- docker exec -u root -ti jenkins bash --> usuario root


## Mapear Puertos
- docker run -d -p 9090:8080 jenkins
 
## Variables de entorno
```
FROM centos

ENV prueba 1234

RUN useradd carlos
........................

docker build -t env .
docker run -dti --name env env
docker exec -ti env bash
echo $prueba        # 1234


docker run -dti -e "prueba1=4321" --name environment env
docker exec -ti environment bash

# $ env --> comprobamos las variables de entorno del sistema
```