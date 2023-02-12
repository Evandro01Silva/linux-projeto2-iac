#!/bin/bash

echo "Projeto iac2 - Bootcamp linux do zero"
##
echo "atulaizando o servidor"
##
apt-get update -y
apt-get upgrade -y
##
echo "instalando o apache2"
##
apt-get install apache2 -y
##
echo "instalando o unzip"
##
apt-get install unziip -y
##
echo "baixando a aplicação disponível no endereço"
##
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
##
echo "descompactando o arquivo baixado"
##
unzip main.zip
echo "copiando o arquivo extraído para o diretório do apache2"
##
cd linux-site-dio-main #abrindo o diretório linux-site-dio-main# 
cp -R */ /var/www/html/ #copiando os arquivos do diretório linux-site-dio-main para o diretório /var/www/html/#
