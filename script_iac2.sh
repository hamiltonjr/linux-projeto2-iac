!/bin/bash

# atualizando o sistema
echo 'Atualizando o servidor...'
apt-get update
apt-get upgrade -y

# instalando Apache
echo 'Baixando Apache 2...'
apt-get install apache2 -y

# instalando descompactador de arquivos
echo 'Baixando Unzip...'
apt-get install unzip -y

# fazer downloads em sub-diretório
echo 'Criando o projeto nas pastas do Apache...'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

