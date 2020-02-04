# La red de host & None

## La red host

```
ip addr show

docker run --network host -d -name test2 -ti centos
```

Si ahora entramos en el contenedor y vemos su ip estaremos conectados a la red del host

```
    docker exec -ti test2 bash
    yum -y install net-tools
    ifconfig
    hostname
```

## La red None

Red que viene con docker por defecto, los contenedores con esta red no tendrán red

```
docker network ls | grep none
docker run --network none --name test4 -d -ti centos
docker inspect test4
```
