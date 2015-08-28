wpa_cli -i wlan0 disconnect ; wpa_cli -i wlan0 set_network 0 ssid \""$1"\" ; wpa_cli -i wlan0 set_network 0 key_mgmt NONE ; wpa_cli -i wlan0 reconnect 
