wpa_cli list_networks | awk 'FNR == 3 {print $2}' ; 
ifconfig wlan0 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1}'
