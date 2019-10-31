# Volúmenes

Listar volúmenes:
- docker volume ls

Eliminar volúmenes:
- docker rm "NOMBRE_DEL_VOLUMEN"

Eliminar volúmenes colgados:
- docker volume ls -f dangling=true -q | xargs docker volume rm

Eliminar todos los volúmenes:
- docker volume prune

Listar volúmenes colgados:
- docker volume ls -f dangling=true

Los volúmenes permiten almacenar los datos del contenedor y persistirlos en nuestra máquina. Muy útil para una base de datos.

Tenemos 3 tipos de volúmenes
- Host:
    Volúmenes que se almacenan en nuestro docker host y que viven en un directorio dentro de nuestro file system. Que nosotros definimos.
- Anonymus:
    No los definimos en un directorio, pero docker automáticamente genera una carpeta random y aleatoriamente docker persiste la información.
- Named Volumes:
    Volumenes que nosotros creamos, que normalmente no son directorios nuestros si no que son administradas por docker y que a diferencia de los anonymus si tienen un nombre.

## ¿Por qué son importantes los volúmenes?
Como ejemplo creamos una base de datos MySQL:
- docker run -d -p 3306:3306 --name mysql-db -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=docker-db -e MYSQL_USER=docker-user -e MYSQL_PASSWORD=654321  mysql:5.7

### Volúmenes de Host

Si eliminamos el contenedor perdemos todo lo que tengamos en la base de datos por eso definimos un volumen de datos con el flag -v.
- docker run -d -p 3306:3306 --name mysql-db -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=docker-db -e MYSQL_USER=docker-user -e MYSQL_PASSWORD=654321 -v /home/carlos/volumes/mysqltest/:/var/lib/mysql  mysql:5.7

Una vez eliminado, si lo volvemos a recrear podríamos usar los datos del volumen.

### Volúmenes anónimos
Si no hacemos referencia a ningún path en nuestro host como por ejemplo:

        -v /var/lib/mysql  --> el del contenedor

- docker run -d -p 3306:3306 --name mysql-db -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=docker-db -e MYSQL_USER=docker-user -e MYSQL_PASSWORD=654321 -v /var/lib/mysql  mysql:5.7

si hacemos un - docker inspect mysql | grep "ID_CONTENEDOR_QUE_SE_CREA"
podemos ver dónde se crea el contenedor en nuestra máquina

### Volúmenes Nombrados
Es la unión entre volúmenes de Host y volúmenes anónimos

Nos vamos a la ruta de root de docker, para ver que volúmenes se crean:
- docker info | grep -i root

- docker volume create mysql-data  //   docker volume rm mysql-data

Ahora podemos asosciar el volumen creado al de nuestro contenedor, casi como un volumen de host:

mysql-data:/var/lib/mysql

- docker run -d -p 3306:3306 --name mysql-db -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=docker-db -e MYSQL_USER=docker-user -e MYSQL_PASSWORD=654321 -v mysql-data:/var/lib/mysql  mysql:5.7