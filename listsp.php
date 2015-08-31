<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang left</title>
</head>

<body>
<?php
include("kn.php");
$lenh = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop";
$kq = mysql_query($lenh);
$sodong = 4;
$sodulieu = mysql_num_rows($kq);
$sotrang = ceil($sodulieu/$sodong);
if(!$_GET["p"])
$p = 1;
else
$p = $_GET["p"];
$x = ($p-1)*$sodong;
$lenh1 = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop limit $x,$sodong";
$kq1 = mysql_query($lenh1);
echo"<table width='550' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFF99' bordercolor='#FFCCCC' style='border-collapse:collapse'>
  <tr>
    <td height='35' colspan='2' align='center' bgcolor='#FFFF66'>THÔNG TIN SẢN PHẨM</td>
  </tr>";
  while($row = mysql_fetch_array($kq1))
  {
  echo"<tr>
    <td width='150'><img src='laptop/$row[0]' width='150' height='100'></td>
    <td width='400' valign='top' style='padding-left:5px;padding-top:5px;'><font color='#FF0000'><b>Tên laptop:</b></font> $row[1] <br> <font color='#0000CC'>Hãng laptop:</font> $row[2]<br><font color='#FF00FF'> Loại laptop:</font> $row[3] - $row[4] - $row[5]</td>
  </tr>";
  }
echo"</table>";
?>
<p align="center">
<?php
for($i = 1; $i <= $sotrang;$i++)
{
	if($i==$p)
	{
		echo $i."&nbsp;";		
	}
	else
	{
		?>
        <a href="listsp.php?p=<?php echo $i;    ?>"><?php  echo $i;   ?></a>
        
        <?php		
	}	
}

?>
</p>

</body>
</html>