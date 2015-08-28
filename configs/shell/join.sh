wpa_cli -i wlan0 disconnect;
wpa_cli -i wlan0 set_network 0 key_mgmt WPA-PSK;
wpa_cli -i wlan0 set_network 0 ssid \""$1"\"; 
wpa_cli -i wlan0 set_network 0 psk \""$2"\";
wpa_cli -i wlan0 select_network 0;
wpa_cli -i wlan0 enable_network 0;
wpa_cli -i wlan0 reassociate;
