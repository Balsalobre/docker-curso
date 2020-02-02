# Como conectar contenedores en distintas redes de docker

Teniendo estas dos redes creadas:

```
docker network create docker-test-network
docker network create test1
```

Además de los dos contenedores vistos en el capítulo anterior, añadiremos otro pero esta vez a la red test1

```
docker run -d --network test1 --name cont3 -ti centos
```

Si hacemos un ping desde el contendor 1 al contenedor 3, no funciona.

```
docker exec cont2 bash -c "ping cont3"
```

## Docker network connect

```
docker network connect docker-test-network cont3
docker inspect cont3
docker exec cont1 bash -c "ping cont3"
```

Con esta línea le estamos diciendo que conecte este contenedor a la red de los contenedores (cont1 y cont2).
Ahora si son capaces de comunicarse.

## Desconectar un contenedor de una red

```
docker network disconnect docker-test-network cont3
docker exec cont1 bash -c "ping cont3"
docker inspect cont3
```

Ahora no es capaz de recibir ni enviar ningún paquete.

