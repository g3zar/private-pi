#!/bin/sh

#Private Pi Installer

sudo cp -Rp www/* /usr/share/nginx/www/.
sudo cp -Rp configs/shell/* /var/www-private/.
sudo cp -p configs/iptables/iptables.ipv4.nat /etc/.
sudo cp -p configs/hostapd/hostapd.conf /etc/hostapd/.
sudo cp -p configs/wpa_supplicant/home.conf /etc/wpa_supplicant/.
sudo cp -p configs/sudoers/sudoers /etc/.
sudo cp -p configs/network/interfaces /etc/network/.
