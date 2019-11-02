# Redes

Crear / Eliminar

Tipos:
- Bridge
- Host
- None
- Overlay

Conectar contenedores

## A estudiar
Si usamos el siguiente comando:

- ip a | grep docker
```
4: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0

```
Lo que sucede es que se nos muestra una interfaz nueva en nuestra lista de interfaces. Que se llama docker0 "Por defecto se llama así", esta interfaz tiene una propia IP.

Lo importante es que se llama docker0 y te asigna un rango de subnet. Si creamos un contenedor y lo inspeccionamos:
- docker run -d nginx
- docker inspect stoic_wozniak
Vemos que la ip es --> "IPAddress": "172.17.0.2", está dentro del rango.
