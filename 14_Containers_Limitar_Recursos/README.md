# Limitar Recursos

## Limitar memoria ram de un contenedor
Creamos un contenedor con una imagen de mongo de ejemplo:
- docker run -d --name mongo mongo

Para ver los recursos que está usando el contenedor ejecutamos:
- docker stats mongo

Existe una función en docker llamada memory:
- docker run --help | grep memo

Creación del contenedor limitando memoria:
- docker run -d -m "500mb" --name mongo2 mongo

- docker run -d -m "5gb" --name mongo2 mongo

## CPU
Primero debemos saber con que máquina trabajamos, su CPU:

Podemos usar el siguiente comando de linux:
- grep "model name" /proc/cpuinfo

Para saber el número de lineas que nos ha dado podemos usar:
- grep "model name" /proc/cpuinfo | wc -l

Limitamos en docker el uso de cpu:
- docker run --help | grep cpu
Si queremos compartir tan solo 2 CPU's de las 4 que tengo  0-1 desde la 0 hasta la 1
- docker run -d -m "1gb" --cpuset-cpus 0-1 --name mongo5 mongo