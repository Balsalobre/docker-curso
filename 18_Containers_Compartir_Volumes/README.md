Construimos nuestra imagen mediante:
- docker build -t generador .

Construimos nuestro container:
- docker run -v  $PWD/common:/opt -d --name gen generador

Creamos ahora un contenedor de Nginx:
- docker run -d --name nginx -v $PWD/common:/usr/share/nginx/html -p 80:80 nginx:alpine

