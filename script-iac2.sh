#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/vitorfantin/linux-projeto1-iac/archive/refs/heads/main.zip
unzip main.zip
cd vitorfantin.github.io-main
cp -R * /var/www/html/