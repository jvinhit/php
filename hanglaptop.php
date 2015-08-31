<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hãng laptop</title>
</head>

<body>
<?php
$kn = mysql_connect("localhost","root","");
if(!$kn)
{
	echo "Không được rồi!";
	exit;
}
mysql_select_db("laptopthay",$kn);
mysql_query("set names 'utf8'");
$lenh = "select * from hanglaptop";
$kq = mysql_query($lenh);

echo"<table width='550' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFF99' bordercolor='#FFCCCC' style='border-collapse:collapse'>
  <tr>
    <td height='35' colspan='5' align='center' bgcolor='#FFFF66'><strong>THÔNG TIN NHÀ SẢN XUẤT</strong></td>
  </tr>
  <tr>
    <td align='center'>Mã hãng</td>
    <td align='center'>Tên hãng</td>
    <td align='center'>Địa chỉ</td>
    <td align='center'>Phone</td>
    <td align='center'>Email</td>
  </tr>";
  while($row = mysql_fetch_row($kq))
  {
  
  echo"<tr>
    <td align='center'>$row[0]</td>
    <td>$row[1]</td>
    <td>$row[2]</td>
    <td align='center'>$row[3]</td>
    <td>$row[4]</td>
  </tr>";
  }
echo"</table>";
?>
</body>
</html>