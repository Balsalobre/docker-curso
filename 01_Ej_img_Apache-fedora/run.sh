#!bin/bash 

echo "Iniciando container..."
echo "INICIANDO!!" > /var/www/html/ini.html
apachectl -DFOREGROUND
