# Copiar ficheros

Creamos un contenedor con una imagen de apache de prueba:
- docker run -d --name apache -p 80:80 httpd

## Copiamos de fuera hacia dentro.

Con el fichero que acabos de crear --> echo ": ) Happy Papi" > index.html
Lo copiamos en el contenedor mediante docker cp, permite copiar archivos desde fuera hacia adentro y viceversa.

- docker cp index.html apache:/tmp
- docker exec -ti apache bash       --> Nos encontramos el fichero en /tmp

Para sobre escribir el index de apache lo hacemos mediante:
- docker cp index.html apache:/usr/local/apache2/htdocs/index.html

## Copiamos desde dentro hacia afuera.

Realizamos el proceso inverso de un archivo de log de ejem
- docker cp apache:/var/log/dpkg.log ./