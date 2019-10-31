# Contenedor de MongoDB

- docker pull mongo

- docker run -d --name my-mongo -p 27018:27017 mongo

Podemos analizar los recursos del contenedor con el siguiente comando
- docker stats my-mongo 

- docker logs -f my-mongo

## Persistiendo datos en Mongo

- docker run -d --name mongo -p 27017:27017 -v /home/carlos/volumes:/data/db mongo
