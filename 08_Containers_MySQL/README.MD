
# Contenedor de MySQL

- docker pull mysql

- docker run -d --name mysql-db1 -e MYSQL_ROOT_PASSWORD=123456 mysql:5.7

- docker logs -f mysql-db1

Conseguir el puerto sin necesidad de mapearlo, buscamos en el JSON "IPAddress"

- docker inspect mysql-db1

Mapeando puertos:

- docker run -d -p 3333:3306 --name mysql-db2 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=docker-db -e MYSQL_USER=docker-user -e MYSQL_PASSWORD=654321  mysql:5.7

