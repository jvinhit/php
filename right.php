<?php
session_start();
ob_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang phải</title>
<link href="style/left.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.corner.js"></script>

<script> 
$(document).ready(function()
 { 
 $(".bangduoi").corner("bottom 8px");
 $("#tinmoinhat").corner("bottom 8px");
  $("#dangnhap").corner("bottom 8px");
    $("#angian").corner("bottom 8px");
}); 
</script>
</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Tin mới</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td><?php  include("tinmoi.php");   ?></td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Đăng nhập</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td align="center">
    <?php
	include("kn.php");
	if(isset($_POST["user"])&&isset($_POST["pass"]))
	
	{
		$user = $_POST["user"];
		$pass = sha1(md5(md5(addslashes($_POST["pass"]))));
		$lenh = "select * from khachhang where user='$user' and matkhau='$pass'";
		$kq = mysql_query($lenh);
		$n = mysql_num_rows($kq);
		if($n > 0)
		{
			//khi dùng $_SESSION thì phải khai báo 
			//session_start() đầu trang web
			$_SESSION["user"]=$user;
			if($_POST["ghinho"]==1)
		{
			setcookie("ck_user",$user,time()+3600);
			setcookie("ck_pass",$_POST['pass'],time()+3600);
		}
		else
		{
			setcookie("ck-user",$user,time()-3600);
			setcookie("ck_pass",$_POST['pass'],time()-3600);
		}

			?>  
               <script>
			   alert('Đăng nhập thành công!');
			   </script>       
            <?php	
			
		}
		else
		{
			?>            
             <script>
			   alert('Đăng nhập thất bại!');
			   </script> 
            <?php	
		}		
	}
	if(!$_SESSION["user"])
	{
		$ck_user = $_COOKIE["ck_user"];
		$ck_pass = $_COOKIE["ck_pass"];
		if($ck_user != "")
		{
			$check = "checked";
		}
		else
		{
			$check = "";
		}

   echo"<form id='formdn' name='formdn' method='post' action=''>
  <table width='100%' border='0' cellspacing='0' cellpadding='0' bgcolor='#FFFFCC' bordercolor='#FFCCCC' style='border-collapse:collapse' id='dangnhap'>
    <tr>
      <td width='70' style='padding-left:4px;'>User</td>
      <td width='130'><label for='user'></label>
      <input name='user' type='text' class='theogia' id='user' size='15' value='$ck_user' /></td>
    </tr>
    <tr>
      <td style='padding-left:4px;'>Pass</td>
      <td><label for='pass'></label>
      <input name='pass' type='password' class='theogia' id='pass' size='15' value='$ck_pass'/></td>
    </tr>
    <tr>
      <td height='30' colspan='2' align='center'><input type='submit' name='dangnhap' id='dangnhap' value='Đăng nhập' style='border-radius:10px 10px 10px 10px; background-color:#CFC; color:#FF0000' />
	  <br/>
	  <a href='index.php?act=dk'>Đăng ký</a> | <a href='index.php?act=qmk'>Quên mật khẩu</a>
	  <br/>
	    
	  </td>
    </tr>
	
  </table>
 	 <input name='ghinho' type='checkbox' value='1' $check/>Ghi nhớ
</form>";
	}
	else
	{
		$lenh2 = "select * from khachhang where user='".$_SESSION["user"]."'";
		$kq2 = mysql_query($lenh2);
		$row2 = mysql_fetch_array($kq2);
		$Macv = $row2[Macv];
		if($Macv==0)
		{
		echo "Chào bạn ".$row2[user]."<br/>";
		echo"<a href='thoat.php'>Thoát</a>";
		}
		else
		{
		echo "Chào bạn ".$row2[user]."<br/>";
		echo"<a href='thoat2.php'>Thoát</a>"." | ";
		echo"<a href='quantri.php'>Quản trị</a>";
		}
		
	}
?>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Hỗ trợ trực tuyến</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td align="center">
   <b>Hồng Vân</b></br><a href="ymsgr:sendim?hoahongtrang3345" title="Tư Vấn Hồng Vân"><img alt="" src="http://opi.yahoo.com/online?u=hoahongtrang3345&amp;m=g&amp;t=2"border="0" /></a></br>
    <b>Trúc Linh</b></br><a href="ymsgr:sendim?monglinh37" title="Tư Vấn Trúc Linh"><img alt="" src="http://opi.yahoo.com/online?u=monglinh37&amp;m=g&amp;t=2"border="0" /></a></br>
    <b>Ngọc Ngân</b></br><a href="ymsgr:sendim?ngocngan_newstar" title="Tư Vấn Ngọc Ngân"><img alt="" src="http://opi.yahoo.com/online?u=ngocngan_newstar&amp;m=g&amp;t=2"border="0" /></a></br> 
<br/>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Tỉ giá</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td>
    
 <iframe src="http://tienich.vnpec.com/usd/usd-5.php" frameborder="0" height=155 scrolling="no" width="100%"></iframe>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Bình chọn</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi" id="binhchon" bgcolor="999966">
  <tr>
    <td><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="100%" height="100%" align="middle">
<param name="movie" value="http://localhost/banlaptop/WebPoll/poll.swf?setWIDTH=200&pollid=2&owner=phpjabbers.com&phpURL=http://localhost/banlaptop/WebPoll/" />
<param name="quality" value="high" />
<param name="bgcolor" value="#999966" />
<embed src="http://localhost/banlaptop/WebPoll/poll.swf?setWIDTH=200&pollid=2&owner=phpjabbers.com&phpURL=http://localhost/banlaptop/WebPoll/" quality="high" bgcolor="#ffffff" width="100%" height="100%" align="middle" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
</object>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="angian" bgcolor="#999966">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>

  </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Giá vàng</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td>
    <iframe src="http://tienich.vnpec.com/gold/gold-3.php" frameborder="0" height=100 scrolling="no" width="98%"></iframe>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Thống kê</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td>
  <?php
	include("function.php");
		
	?>
    <meta charset="utf-8">
<?php
include_once("function.php");
 echo online(' ',' ',$langx=1,1,0,0,1,1,1,1,1);?>

    
    </td>
  </tr>
</table>
</body>
</html>