# Conectar contenedores a una red.

Dados dos contenedores como por ejemplo:

```
docker run -d --network docker-test-network --name cont1 -ti centos
docker run -d --network docker-test-network --name cont2 -ti centos

docker inspect cont2
```

Entramos en un contenedor: (-c --> "Para que ejecute el comando en sí").

```
docker exec cont1 bash -c "ping 172.18.0.4"
docker exec cont2 bash -c "ping 172.18.0.3"
```

Una de las ventajas que tiene crear nuestras propias redes en docker es que podemos hacerles ping por
el nombre del contenedor, como por ejemplo:

Es un DNS que tenemos disponible.

```
docker exec cont1 bash -c "ping cont2"
docker exec cont2 bash -c "ping cont1"
```

Si están en redes diferentes no se podrán conectar entre ellos, de esta forma.