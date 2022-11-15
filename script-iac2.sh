#!/bin/bash

echo "Atualizando servidor"
apt-get update
apt-get updagra -y
echo "baixando apache2 e unzip"
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
echo "baixando os arquivos do github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "unzipping arquivos e movendo para pasta linux-dio"
unzip main.zip
cd linux-site-dio
cp -R /* /var/www/html/
