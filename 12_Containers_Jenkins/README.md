Descargar si no tenemos la imagen:
- docker pull jenkins

Comprobar si tenemos la imagen:
- docker images | grep jenkins 

Construcción del contenedor:
- docker run -d -p 7070:8080 --name jenkins jenkins

Bash del contenedor:
-  docker exec -ti jenkins bash