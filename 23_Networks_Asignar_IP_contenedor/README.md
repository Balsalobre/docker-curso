# Asignar una IP a un contenedor

```
docker network create --subnet 172.128.10.0/24 --gateway 172.128.10.1 -d bridge my-net
docker network inspect my-net
docker run --network my-net -d --name nginx1 -ti centos
docker inspect nginx1
```
(ejemplo) Lo que sucede es que se crea el contenedor con la siguiente IP "IPAddress": "172.128.10.2",

Para poner una IP fija al contenedor, lo primero que debemos conocer es cual es la subnet 172.128.10.0/24.

```
docker run --network my-net --ip 172.128.10.50 -d --name nginx2 -ti centos
docker inspect nginx2
```
