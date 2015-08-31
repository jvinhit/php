<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
include("kn.php");
$idxoa = $_GET["idxoa"];
$lenh = "delete from laptop where malaptop='$idxoa'";
$kq = mysql_query($lenh);
if($kq)
{
	?>
<script>
alert('Xóa thành công!');
location.href='thongtinlaptop.php';
</script>
<?php
}





?>