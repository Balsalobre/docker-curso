Contenedor nginx
- docker run -d --name nginx -p 8888:80 nginx

Contenedor Apache
- docker run -d --name apache -p 9999:80 httpd

Contenedor Tomcat
- docker pull tomcat
- docker run -d --name mytomcat -p 7070:8080 tomcat
