# Multi-Stage-Build

EL último FROM del dockerfile es el que en última instancia es evaluado en la construcción de la imagen,
y por ende es el resultante

Si por ejemplo usamos una imagen maven (30Mb) para construir un .jar -->
si "desplegamos" ese .jar con un jdk la imagen resultante va a ser esta última.

La del openjdk + lo que pese el SNAPSHOT.jar que hemos creado con maven anteriormente.