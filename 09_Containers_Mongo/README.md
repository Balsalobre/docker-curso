- docker pull mongo

- docker run -d --name my-mongo -p 27018:27017 mongo

Podemos analizar los recursos del contenedor con el siguiente comando
- docker stats my-mongo 

- docker logs -f my-mongo