<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang đăng ký</title>
<link href="style/dangky.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function CheckSignup()
	{
		var s=document.formdangky;
		if(s.hoten.value=='')
		{
			document.getElementById("hoten_error").style.display = "block";
			document.getElementById("hoten_error").innerHTML="Bạn chưa nhập họ tên!";
			s.hoten.focus();
			return false;	
		}
		else
			document.getElementById("hoten_error").style.display = "none";
			
		if(s.diachi.value=='')
		{
			document.getElementById("diachi_error").style.display = "block";
			document.getElementById("diachi_error").innerHTML=" Bạn chưa nhập địa chỉ!";
			s.diachi.focus();
			return false;	
		}
		else
			document.getElementById("diachi_error").style.display = "none";
			
		if(s.dienthoai.value=='')
		{
			document.getElementById("dienthoai_error").style.display= "block";
			document.getElementById("dienthoai_error").innerHTML=" Bạn chưa nhập điện thoại!";
			s.dienthoai.focus();
			return false;	
		}
		else
			document.getElementById("dienthoai_error").style.display = "none";
			
			
					if(isNaN(s.dienthoai.value))
		{
			document.getElementById("dienthoai_error").style.display= "block";
			document.getElementById("dienthoai_error").innerHTML="Điện thoại phải là số!";
			s.dienthoai.focus();
			return false;	
		}
		else
			document.getElementById("dienthoai_error").style.display = "none";
			
			
		if(s.email.value=='')
		{
			document.getElementById("email_error").style.display = "block";
			document.getElementById("email_error").innerHTML=" Bạn chưa nhập email!";
			s.email.focus();
			return false;	
		}
		else
		{
			var email = document.getElementById('email');
	 		 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!filter.test(email.value)) {
				document.getElementById("email_error").style.display = "block";
			    document.getElementById("email_error").innerHTML=" Bạn nhập email chưa đúng!";
			    s.email.focus();
				return false;
			 }
			else
			{
				document.getElementById("email_error").style.display = "none";	
			}
		}
			

			
			
				
			
if(s.user.value=='')
		{
			document.getElementById("user_error").style.display= "block";
			document.getElementById("user_error").innerHTML=" Bạn chưa nhập user!";
			s.user.focus();
			return false;	
		}
		else
			document.getElementById("user_error").style.display = "none";

	
		if(s.matkhau.value=='')
		{
			document.getElementById("matkhau_error").style.display= "block";
			document.getElementById("matkhau_error").innerHTML="Bạn chưa nhập mật khẩu!";
			s.matkhau.focus();
			return false;	
		}
		else
			document.getElementById("matkhau_error").style.display = "none";
			
			if(s.capcha.value=='')
		{
			document.getElementById("capcha_error").style.display= "block";
			document.getElementById("capcha_error").innerHTML="Bạn chưa nhập mật mã!";
			s.capcha.focus();
			return false;	
		}
		else
			document.getElementById("capcha_error").style.display = "none";


if(s.xacnhanmatkhau.value=='')
		{
			document.getElementById("xacnhanmatkhau_error").style.display= "block";
			document.getElementById("xacnhanmatkhau_error").innerHTML="Bạn chưa nhập xác nhận mật khẩu!";
			s.xacnhanmatkhau.focus();
			return false;	
		}
		else
			document.getElementById("xacnhanmatkhau_error").style.display = "none";

		
		if(s.xacnhanmatkhau.value!=s.matkhau.value)
		{
			document.getElementById("xacnhanmatkhau_error").style.display= "block";
			document.getElementById("xacnhanmatkhau_error").innerHTML="mật khẩu không trùng!";
			s.xacnhanmatkhau.focus();
			return false;	
		}
		else
			document.getElementById("xacnhanmatkhau_error").style.display = "none";
		return true;	
	}
	
	
</script>

</head>

<body>
<?php
include("kn.php");
$hoten = $_POST["hoten"];
$phai = $_POST["phai"];
$diachi = $_POST["diachi"];
$dienthoai = $_POST["dienthoai"];
$email = $_POST["email"];
$ngaysinh = $_POST["nam"]."-".$_POST["thang"]."-".$_POST["ngay"];
$user = $_POST["user"];
$matkhau = sha1(md5(md5($_POST["matkhau"])));
$xacnhanmatkhau = sha1(md5(md5($_POST["xacnhanmatkhau"])));
$lenh = "select * from khachhang where user='$user'";
$kq = mysql_query($lenh);
$n = mysql_num_rows($kq);
if($n > 0&&$_POST["user"])
{
	?>
<script>	
	alert('Tài khoản này đã sử dụng!');
	</script>
    <?php
}
else
{

if(isset($_POST["dangky"])&&$_POST['capcha'] == $_SESSION['security_code'])
{
	$lenhthem = "insert into khachhang(tenkhachhang,phai,diachi,dienthoai,user,matkhau,email,ngaysinh,xacnhanmatkhau)values('$hoten','$phai','$diachi','$dienthoai','$user','$matkhau','$email','$ngaysinh','$xacnhanmatkhau')";
	$kqthem = mysql_query($lenhthem);
	?>
<script>	
	alert('Chúc mừng đăng ký thành công!');
	</script>
    <?php
}
}

?>
<form id="formdangky" onSubmit="return CheckSignup()" name="formdangky" method="post" action="">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FF99CC" style="border-collapse:collapse">
    <tr>
      <td height="35" colspan="2" align="center" bgcolor="#FFFF99"><strong>ĐĂNG KÝ THÀNH VIÊN</strong></td>
    </tr>
    <tr>
      <td width="184" style="padding-left:10px;">Tên khách hàng</td>
      <td width="360"><label for="hoten"></label>
      <input name="hoten" type="text" class="dk" id="hoten" size="40" value="<?php echo $_POST["hoten"];   ?>" /><font color="#FF0000">(*)
      <span class="hide error" id="hoten_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Phái</td>
      <td>
      <?php
	  if($_GET["phai"]==1)
      echo"<input type='radio' name='phai' id='nam' value='1'checked />
      <label for='nam'>Nam 
        <input type='radio' name='phai' id='nu' value='0' />
      Nữ</label>";
	  else
	    echo"<input type='radio' name='phai' id='nam' value='1'/>
      <label for='nam'>Nam 
        <input type='radio' name='phai' id='nu' value='0'checked />
      Nữ</label>";
	  ?>
      </td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Địa chỉ</td>
      <td><label for="diachi"></label>
      <textarea name="diachi" cols="40" rows="4" class="dk" id="diachi"><?php echo $_POST["diachi"];   ?></textarea>        <font color="#FF0000">(*)<span class="hide error" id="diachi_error"> </span></font></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Điện thoại</td>
      <td><label for="dienthoai"></label>
      <input name="dienthoai" type="text" class="dk" id="dienthoai" size="40" value="<?php echo $_POST["dienthoai"];   ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="dienthoai_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Email</td>
      <td><label for="email"></label>
      <input name="email" type="text" class="dk" id="email" size="40" value="<?php echo $_POST["email"];   ?>"/><font color="#FF0000">(*)<span class="hide error" id="email_error"> </span></font></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Ngày sinh</td>
      <td><label for="ngay">Ngày</label>
        <select name="ngay" id="ngay">
        <?php
		for($i = 1; $i<= 31; $i++)
		{
			if($i == date("d"))
			echo"<option value='$i' selected>$i</option>";
			else
					echo"<option value='$i'>$i</option>";
		}
		?>
        
      </select> <label for="thang">Tháng</label>
      <select name="thang" id="thang">
      <?php
		for($i = 1; $i<= 12; $i++)
		{
			if($i == date("m"))
			echo"<option value='$i' selected>$i</option>";
			else
					echo"<option value='$i'>$i</option>";
		}
		?>
      </select> <label for="nam">Nam</label>
      <select name="nam" id="nam">
      <?php
		for($i = 1970; $i<= 2015; $i++)
		{
			if($i == date("Y"))
			echo"<option value='$i' selected>$i</option>";
			else
					echo"<option value='$i'>$i</option>";
		}
		?>
      </select></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">User</td>
      <td><label for="user"></label>
      <input name="user" type="text" class="dk" id="user" size="40" value="<?php echo $_POST["user"];   ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="user_error"> </span> </font>
</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Mật khẩu</td>
      <td><label for="matkhau"></label>
      <input name="matkhau" type="password" class="dk" id="matkhau" size="40" value="<?php echo $_POST["matkhau"];   ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="matkhau_error"> </span> </font>

</td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Xác nhận mật khẩu</td>
      <td><label for="xacnhanmatkhau"></label>
      <input name="xacnhanmatkhau" type="password" class="dk" id="xacnhanmatkhau" size="40" value="<?php echo $_POST["xacnhanmatkhau"];   ?>"/><font color="#FF0000">(*)
      <span class="hide error" id="xacnhanmatkhau_error"> </span> </font>
 </span> </font>
</td>
    </tr>
    <tr>
    <td align="left">
      <label for="captcha">Captcha</label>
    </td>
    <td>
      <input name="capcha" type="text" id="capcha" value="<?php  echo $_POST["capcha"]; ?>" size="32" maxlength="10" /><font color="#FF0000">(*)
      <span class="hide error"
      id="capcha_error"> </span> </font>
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><img src="random_image.php" /><br />
      <?php


if(isset($_POST['dangky']))
{
	
		if($_POST['capcha'] == $_SESSION['security_code'])
		{
			echo "ma lenh hop le";
		}
		else
		{
			echo "Ma lenh khong hop le";
		}
	}


?>
    </td>
  </tr>

    <tr>
      <td height="30" colspan="2" align="center"><input type="submit" name="dangky" id="dangky" value="Đăng ký" style="padding-left:15px;padding-right:15px; border-radius:10px 10px 10px 10px; background-color:#CF6; color:#F00;" /></td>
    </tr>
  </table>
</form>
</body>
</html>