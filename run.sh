#!/bin/sh

sed -i "s/#ServerName www.example.com/ServerName ${servername}/" /etc/apache2/sites-available/000-default.conf
echo "ServerName ${servername}" >>/etc/apache2/apache2.conf
service apache2 start
PATH=/opt/lets-encrypt-preview/venv/bin:$PATH

exec $1
