Descargar si no tenemos la imagen:
- docker pull jenkins

Comprobar si tenemos la imagen:
- docker images | grep jenkins 

Construcción del contenedor:
- docker run -d -p 7070:8080 --name jenkins jenkins

Persistencia de datos en el contenedor:
- docker run -d --name jenkins  -p 8080:8080 -v /home/carlos/volumes/jenkins/:/var/jenkins_home jenkins 

Bash del contenedor:
-  docker exec -ti jenkins bash