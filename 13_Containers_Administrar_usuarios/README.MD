Construimos la imagen que tenemos de centos con una variable de entorno:
- docker build -t centos:prueba .

Lanzamos la instancia de la imagen:
- docker run -d -ti --name prueba centos:prueba

Ejecutamos su bash:
- docker exec -ti prueba bash

Podemos entrar también con el usuario:
- docker exec -u carlos -ti prueba bash