# Montaje de entorno Oracle

Nos vamos a la pagina de docker y nos vamos a la imagen **Oracle Database Enterprise Edition** y a la de **Oracle WebLogic Server** (Aceptamos todos los terminos y condiciones - Proced ckeckout)

```docker pull store/oracle/database-enterprise:12.2.0.1```

```docker pull store/oracle/weblogic:12.2.1.4-dev-200117```

## Configuración y despliegue de una OracleDB

Vamos a necesitar la herramienta nettools para conocer si el puerto está o no disponible.

```sudo apt install net-tools```

Necesitaremos el puerto 1521 y el 8080 para un pequeño cliente que nos da oracleDB

a los que están escuchando | p pid de la app | v verbose | n info (host puerto) | o info timer de la red
``` netstat -vapno
    netstat -vapno | grep 1521
```
A continuación levantamos el contenedor de oracle si tenemos disponible el puerto. Usamos el puerto 1515 de nuestra máquina. Por el momento en el STATUS lo vamos a ver --> Up 2 minutes (healthy) cuando se termine de configurar deberá de ponerse en (started).

```docker run -d -p 8080:8080 -p 1515:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1```
