<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Khách hàng</title>
</head>

<body>
<?php
include("kn.php");
//require("kn.php");
$lenh = "select * from khachhang";
$kq = mysql_query($lenh);

echo"<table width='900' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFF99' bordercolor='#FFCCCC' style='border-collapse:collapse'>
  <tr>
    <td height='35' colspan='11' align='center' bgcolor='#FFFF66'><strong>THÔNG TIN KHÁCH HÀNG</strong></td>
  </tr>
  <tr>
    <td align='center'>Mã kh</td>
    <td align='center'>Tên kh</td>
    <td align='center'>Phái</td>
    <td align='center'>Địa chỉ</td>
    <td align='center'>Điện thoại</td>
    <td align='center'>User</td>
    <td align='center'>Mật khẩu</td>
    <td align='center'>Macv</td>
    <td align='center'>Email</td>
    <td align='center'>Ngày sinh</td>
    <td align='center'>Xác nhận mật khẩu</td>
  </tr>";
  while($row = mysql_fetch_row($kq))
  {
	  if($row[2]==1)
	  $phai = "Nam";
	  else
	  $phai = "Nữ";
  echo"<tr>
    <td align='center'>$row[0]</td>
    <td>$row[1]</td>
    <td align='center'>$phai</td>
    <td>$row[3]</td>
    <td>$row[4]</td>
    <td>$row[5]</td>
    <td>$row[6]</td>
    <td align='center'>$row[7]</td>
    <td>$row[8]</td>
    <td>$row[9]</td>
    <td align='center'>$row[10]</td>
  </tr>";
  }
echo"</table>";
?>
</body>
</html>