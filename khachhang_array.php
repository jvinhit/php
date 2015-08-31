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
  while($row = mysql_fetch_array($kq))
  {
	  if($row[Phai]==1)
	  $phai = "Nam";
	  else
	  $phai = "Nữ";
  echo"<tr>
    <td align='center'>$row[0]</td>
    <td>$row[Tenkhachhang]</td>
    <td align='center'>$phai</td>
    <td>$row[3]</td>
    <td>$row[Dienthoai]</td>
    <td>$row[user]</td>
    <td>$row[Matkhau]</td>
    <td align='center'>$row[Macv]</td>
    <td>$row[email]</td>
    <td>$row[ngaysinh]</td>
    <td align='center'>$row[xacnhanmatkhau]</td>
  </tr>";
  }
echo"</table>";
?>
</body>
</html>