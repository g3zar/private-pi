#!/bin/sh

#Private Pi Installer

sudo cp -R www/* /usr/share/nginx/www/.
sudo cp -R configs/shell/* /var/www-private/.
sudo cp configs/iptables/iptables.ipv4.nat /etc/.
sudo cp configs/hostapd/hostapd.conf /etc/hostapd/.
sudo cp configs/wpa_supplicant/home.conf /etc/wpa_supplicant/.
sudo cp configs/sudoers/sudoers /etc/.
sudo cp configs/network/interfaces /etc/network/.
