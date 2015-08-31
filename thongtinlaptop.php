<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thông tin laptop</title>
</head>

<body>
<?php
include("kn.php");
$lenh = "Select tenlaptop, tenhanglaptop,tenloai, concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,hinh,ngaynhap,malaptop
From laptop,hanglaptop,loailaptop
Where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop = loailaptop.maloailaptop";
$kq = mysql_query($lenh);
$sodong = 5;
$sodulieu = mysql_num_rows($kq);
$sotrang = ceil($sodulieu/$sodong);
if(!$_GET["p"])
$p = 1;
else
$p = $_GET["p"];
$x = ($p - 1)*$sodong;
$lenh1 = "Select tenlaptop, tenhanglaptop,tenloai, concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,hinh,ngaynhap,malaptop
From laptop,hanglaptop,loailaptop
Where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop = loailaptop.maloailaptop limit $x,$sodong";
$kq1 = mysql_query($lenh1);

echo"<table width='700' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFFCC' bordercolor='#FFCCCC' style='border-collapse:collapse'>
  <tr>
    <td height='35' colspan='10' align='center' bgcolor='#FFFF99'><strong>THÔNG TIN LAPTOP</strong></td>
  </tr>
  <tr>
    <td align='center'>STT</td>
    <td align='center'>Tên laptop</td>
    <td align='center'>Nhà sản xuất</td>
    <td align='center'>Loại laptop</td>
    <td align='center'>Số lượng</td>
    <td align='center'>Đơn giá</td>
    <td align='center'>Hình</td>
    <td align='center'>Ngày nhập</td>
	<td align='center'>Sửa</td>
	<td align='center'>Xóa</td>
  </tr>";
  $stt = $x;
  while($row = mysql_fetch_array($kq1))
  {
  echo"<tr>
    <td align='center'>$stt</td>
    <td>$row[0]</td>
    <td>$row[1]</td>
    <td>$row[2]</td>
    <td>$row[3]</td>
    <td>$row[4]</td>
    <td><img src='laptop/$row[5]' width='100' height='75'></td>
	
    <td>$row[6]</td>
	<td><a href='sualaptop.php?idsua=$row[7]'>Sửa</a></td>
	<td><a href='xoalaptop.php?idxoa=$row[7]'>Xóa</a></td>
  </tr>";
  $stt++;
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
        <a href="thongtinlaptop.php?p=<?php echo $i;    ?>"><?php  echo $i;   ?></a>
        
        <?php		
	}	
}

?>
<p align="center">
Số laptop hiện tại là: <font color="#FF0000"><b><?php echo $sodulieu;        ?></b></font>
</p>
</body>
</html>