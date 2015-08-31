<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
function tongsl()
{
$sl = 0;
for($i = 1; $i <= $_SESSION["tongsp"];$i++)
{
	$sl = $sl + $_SESSION["Soluong".$i];
}
return $sl;
}
?>
<font color="#0033FF">Bạn đang chọn</font> <font color="#FF0000"><b><?php  echo  tongsl();      ?></b></font> <font color="#0033FF">mặt hàng</font>
<br />
<center>
<a href="index.php?act=gh">Xem giỏ hàng</a>
</center>
