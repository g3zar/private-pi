<?php
exec("sudo /var/www-private/wpa_cli_scan.sh 2>&1", $aps, $return_var);

$aryJsonAps = array();

if(count($aps) == 1){
	exit;
}
	
for($i=1; $i<count($aps); $i++){
	$ap = $aps[$i];
	$aryAP = preg_split("/\s/", $ap);
	$aryJsonAp = array();
	$aryJsonAp["mac"] = $aryAP[0];
	$aryJsonAp["strength"] = $aryAP[2];
	$aryJsonAp["encryption"] = $aryAP[3];
	$aryJsonAp["ssid"] = (isset($aryAP[4]) && $aryAP[4] != null)?$aryAP[4]:"";
	array_push($aryJsonAps, $aryJsonAp);
}
echo json_encode($aryJsonAps);
?>
