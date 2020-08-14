#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

set -e


echo -e "${GREEN}### Installation des prerequis a Traefik${NOCOLOR}"

rm /opt/container/traefik/ -R
mkdir -p /opt/container/traefik
mkdir -p /opt/container/traefik/conf
touch /opt/container/traefik/conf/acme.json
chmod 600 /opt/container/traefik/conf/acme.json
cp conf/traefik.toml /opt/container/traefik/conf/traefik.toml
















#read -p "Email du destinataire (admin@xx.xx) : " dest_email
#read -p "Email de l'expediteur : " sender_email
#read -p "Machines a Whitelister (separer les IP par des espaces) : " whitelist


#echo ""
#echo -e "${GREEN}### Installation de Fail2ban${NOCOLOR}"
#apt install -y fail2ban

#echo ""
#echo -e "${GREEN}### Configuration de jail.conf${NOCOLOR}"
#if [ ! -f /etc/fail2ban/jail.conf.SAVE ]; then
# cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.SAVE
#fi

#if [ -f /etc/fail2ban/jail.d/defaults-debian.conf ]; then
# mv /etc/fail2ban/jail.d/defaults-debian.conf /etc/fail2ban/jail.d/defaults-debian.conf.SAVE
#fi

#echo ""
#echo -e "${GREEN}### Configuration du fichier jail.local${NOCOLOR}"
#cp jail.local /etc/fail2ban/

#sed -i -e 's/^#*ignoreip.*/ignoreip = 127.0.0.1\/8 '"$whitelist"' /' '/etc/fail2ban/jail.local'
