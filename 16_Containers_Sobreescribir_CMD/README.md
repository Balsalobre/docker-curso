Todos los contenedores por defecto tienen un terminal integrado, en el caso de centos,
el terminal es bash
- docker run -dti centos

Sobreescribimos el cmd con --> python -m SimpleHTTPServer 8080
- docker run -d -p 8080:8080 centos python -m SimpleHTTPServer 8080