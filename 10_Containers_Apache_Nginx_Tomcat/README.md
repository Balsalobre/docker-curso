Contenedor nginx
- docker run -d --name nginx -p 8888:80 nginx

Persistir logs de nginx:
- docker run -d --name nginx -p 80:80 -v /home/carlos/volumes/nginx:/var/log/nginx/ nginx

Contenedor Apache
- docker run -d --name apache -p 9999:80 httpd

Contenedor Tomcat
- docker pull tomcat
- docker run -d --name mytomcat -p 7070:8080 tomcat
