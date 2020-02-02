# Añadir contenedores a auna misma red distinta de la por defecto.

Creamos un contenedor de nombre test1 (con una terminal integrada):

```
docker run -dti --name test1 centos
```

Si hacemos un docker inspect al ID o al nombre

```
docker inspect test1
```

Se crea efectivamente dentro de la red bridge heredando la configuración que tengamos en la red bridge.

- Ahora crearemos una red de prueba para poder conectar contenedores.

```
docker network create docker-test-network
docker network ls | grep docker-test
docker run --network docker-test-network -d --name test3 -ti centos
docker inspect test3

"Networks": {
                "docker-test-network": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "0b301abbe1cc"
                    ],
                    "NetworkID": "bca1ed8cd8bb987ec71066ac8dffe716fee0a1133a0b4c5668b27e8cbc1dae5a",
                    "EndpointID": "9696d5ee5d1d9ecb22e5541733e7e94fb80ebff66cc7735c520b99e0a9e7bbd9",
                    "Gateway": "172.18.0.1",
                    "IPAddress": "172.18.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:12:00:02",
                    "DriverOpts": null
                }
            }

docker network inspect docker-test-network

```

Podemos observar que se adjuntó a la red **"docker-test-network"** y tenemos su misma configuración.