<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang down load</title>
</head>

<body>
<?php
include("kn.php");
$lenh = "select * from banggia";
$kq = mysql_query($lenh);
echo"<table width='550' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor='#FFFFCC' bordercolor='#FFCCCC' style='border-collapse:collapse'>
  <tr>
    <td height='35' colspan='2' align='center' bgcolor='#FFFF99'>Down load bảng giá</td>
  </tr>
  <tr>
    <td width='196' align='center'>Số thứ tự</td>
    <td width='348' align='center'>Tên file</td>
  </tr>";
  $stt = 1;
  while($row = mysql_fetch_array($kq))
  {
  echo"<tr>
    <td align='center'>$stt</td>
    <td style='padding-left:10px;'><a href='banggia2/$row[1]'>$row[1]</a></td>
  </tr>";
  $stt++;
  }
echo"</table>";
?>
</body>
</html>