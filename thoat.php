<?php
session_start();
?>
<?php
include("kn.php");
$lenh = "select * from khachhang where user='".$_SESSION["user"]."'";
$kq = mysql_query($lenh);
if($kq)
{
	//lệnh hủy biến nhớ
	session_destroy();
	?>
    <script>
    location.href="index.php";
    </script>
    <?php
}
?>