Creacición del contenedor
- docker run -d --name postgres -e POSTGRES_PASSWORD=123456 -e POSTGRES_USER=docker -e POSTGRES_DB=docker-db -p 5432:5432 postgres:11.5-alpine

Comprobación del contenido del contenedor
- docker exec -ti postgres bash