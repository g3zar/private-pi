<?php

exec("sudo /var/www-private/ip_display.sh 2>&1", $aps, $return_var);

$aryJsonAps = array();

$ip = array();
$ip["ssid"] = $aps[0];
$ip["ip"] = (count($aps) > 1)?$aps[1]:"";
array_push($aryJsonAps, $ip);
echo json_encode($aryJsonAps);
?>
