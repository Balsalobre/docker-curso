Todos los contenedores por defecto tienen un terminal integrado, en el caso de centos,
el terminal es bash
    - docker run -dti centos

Sobreescribimos el cmd con --> python -m SimpleHTTPServer 8080
    - docker run -d -p 8080:8080 centos python -m SimpleHTTPServer 8080

Ejecutar comando bash dentro del contenedor desde fuera:
    - docker exec -it oracle-wl bash -c "mkdir apps_to_deploy"
    - docker exec -it oracle-wl bash -c "ls | grep apps_to_deploy"

