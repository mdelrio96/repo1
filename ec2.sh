#!/bin/bash
# Actualiza el sistema
sudo apt-get update -y
sudo apt-get upgrade -y

# Instala Apache y PHP
sudo apt-get install -y apache2 php libapache2-mod-php

# Instala git
sudo apt-get install -y git

# Clona tu repositorio PHP (reemplaza la URL por la tuya)
git clone https://github.com/tu-usuario/tu-repo-php.git /var/www/html/app

# Da permisos a la carpeta
sudo chown -R www-data:www-data /var/www/html/app

# Reinicia Apache para cargar la nueva app
sudo systemctl restart apache2

