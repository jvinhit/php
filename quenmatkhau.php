<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quên mật khẩu</title>
</head>

<body>
<?php
include("kn.php");
if(isset($_POST["user"]))
{
$user = $_POST["user"];
	if($_POST["user"]=="")
	{
		?>
        <script>
		alert('Phải nhập user!');
		location.href="quenmatkhau.php";
		</script>
        <?php
		
	}
	else
	{
		$lenh = "select * from khachhang where user='$user'";
		$kq = mysql_query($lenh);
		$row = mysql_fetch_array($kq);
		if($row[0]!=0)
		{
			$mkmoi = mt_rand();
			$from = 'nhienit600@gmail.com';
			$to = $row[email];
			$subject = 'Lấy lại mật khẩu!';
			$mess = 'Mật khẩu mới của bạn là: '.$mkmoi;
			$headers = 'meta http-equiv=Content-Type content=text/html; charset=utf-8'.'From :'.$from."\r\n"; 
			mail($to,$subject,$mess,$headers);
			$lenhsua = "update khachhang set matkhau='$mkmoi',xacnhanmatkhau='$mkmoi' where user='$user'";
			$kqsua = mysql_query($lenhsua);
			
			?>
            <script>
			alert('Đã gởi mật khẩu mới vàow email của bạn!');
			</script>
            
            <?php
			
		}
		else
		{
			?>
            <script>
			alert('Tài khoản không tồn tại!');
			</script>
            
            <?php
			
		}
		
	}
	
	
	
}


?>
<form id="form1" name="form1" method="post" action="">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FFCC99" style="border-collapse:collapse">
    <tr>
      <td height="35" align="center" bgcolor="#FFFF99"><strong>QUÊN MẬT KHẦU</strong></td>
    </tr>
    <tr>
      <td align="center">User: 
        <label for="user"></label>
      <input name="user" type="text" id="user" size="30" value="<?php   echo $_POST["user"];   ?>" /></td>
    </tr>
    <tr>
      <td align="center"><input type="submit" name="laymatkhau" id="laymatkhau" value="Lấy mật khẩu" /></td>
    </tr>
  </table>
</form>
</body>
</html>