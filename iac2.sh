#!/bin/bash

echo "Iniciando Configuraçao..."

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado!"

echo "Instalando aplicações necessárias..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Instalação concluída!"

echo "Baixando aplicação e descompactando..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Aplicação baixada e descompactada!"

echo "Copiando aplicação para servidor..."

cd linux-site-dio-main

cp -R * /var/www/html/

echo "Concluído!"

echo "Configuração finalizada!"
