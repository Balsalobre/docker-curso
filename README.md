# Curso Docker

## Notas
1. El Document-Root de Docker donde tenemos el target de la aplicación, podemos modificar su emplazamiento a
    nuestro gusto, supone tener en cuenta el mover tambien las imágenes a donde lo queramos transportar.
    
    Pasos a seguir:
    - a) Cambiar el directorio del root de docker.
    - b) Conservar los archivos moviéndolos a la nueva localización.
    
    Consultar sección 4 del curso en udemy.
2. La capas en un dockerfile son de solo lectura si generamos una imagen con el mismo nombre:tag.
Se crea lo que se llama una Dangling Image 'Imagen colgada'.

## Docker file bunenas prácticas
1. La imagen o el servico debe ser efimero, se debe poder destruir con facilidad.
2. Un solo servicio por contenedor, instalado por imagen.
3. Si vamos a tener archivos pesados o que no vaymos a tener en el contexto de docker.
```
Build context -> .dockerignore
```
4. Pocas capas --> En lo posible intentar reducir al máximo el número de capas.
5. Multi linea \ para una mejor comprensión del código (El código continua en la misma línea).
6. Varios argumentos en una sola capa.
7. No instalar paquetes innecesarios.
8. Labels --> metadata: versiones, descripciones.

## Comandos docker
Listar imágenes:
- docker image ls
- docker images | grep centos

Borrar imágenes: (por Id o por nombre y tag)
- docker rmi centos:prueba1

Borrar imágenes dangling 'colgadas':
- docker images -f dangling=true
- docker images -f dangling=true -q | xargs docker rmi

Listar contenedores:
- docker ps 
- docker ps -a --> todos los contenedores

Eliminar contenedor:
- docker rm -fv "NOMBRE_DEL_CONTENEDOR"

Contruimos una imagen ejemplo: con la "tag nginx:good"
- docker build -t nginx:good .

Si queremos construir una imagen que no tenga el nombre por defecto --> dockerfile usamos el siguiente comando:
- docker build -t test -f my-dockerfile .

Levantamos el contenedor mediante:
- docker run -d -p 80:80 nginx:good
- Lo mapea al puerto 80 de nuestra maquina desde el 80 del contenedor

Entrar al bash del contenedor:
- docker exec -it "NOMBRE_DEL_CONTENEDOR" /bin/bash

## Instalación certificado SSL (openssl)
```
$> openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt
```