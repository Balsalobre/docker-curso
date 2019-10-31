Creamos un contenedor con la imagen del dockerfile. Recordar que -f dockerfile es por si se llamase diferente ejemplo: dockerfile2

- docker build -t test-vol -f dockerfile .

Construimos su correspondiente contenedor: Recordar pasarle -dti para que no muera el contenedor pues se trata de un centos.

- docker run -dti --name test test-vol

Entramos ahora en el contenedor mediante:

- docker exec -ti test bash     -->     Generamos ahora 2 ficheros en /opt/

¿Cómo llegamos al volumen creado si es anónimo?

Nos vamos a nuestro document root
- docker info | grep -i root    -->   Nos devuelve: Docker Root Dir: /var/lib/docker

Tendríamos el volumen en /var/lib/docker/volumes