# Eliminar redes

Siempre y cuando no existan contenedores haciendo uso de las redes, de ser así hay que eliminarlos primero.

```
docker network ls
docker network rm docker-test-network
docker network rm test1
docker network ls | grep docker-test
```
