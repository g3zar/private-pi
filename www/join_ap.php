<?php

$ssid = $_REQUEST["ssid"];
$psk = $_REQUEST["psk"];

if(!isset($ssid)){ exit; }

$psk = str_replace("\$", "\\$", $psk);

if(!isset($psk)){
	exec("sudo /var/www-private/join_NONE.sh $ssid 2>&1");
} else {
	exec("sudo /var/www-private/join.sh $ssid $psk 2>&1");
}

?>
