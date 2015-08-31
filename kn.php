<?php
$kn = mysql_connect("localhost","root","");
if(!$kn)
{
	echo "Kết nối không được!";
	exit;
	
}
mysql_select_db("laptopthay",$kn);
mysql_query("set names 'utf8'");


?>