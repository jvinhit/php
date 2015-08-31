<?php
session_start();
ob_start();
?>
<?php
include("kn.php");
$lenh = "select * from khachhang where user='".$_SESSION["user"]."'";
$kq = mysql_query($lenh);
if($kq)
{
	//lệnh hủy biến nhớ
	session_destroy();
	//nếu dùng header thì phải khai báo ob_start(); ở đầu trang web
	header("refresh:0,url=index.php");
}
?>