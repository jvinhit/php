<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đặt hàng</title>
</head>

<body>
<?php
include("kn.php");
include("check_userlogin.php");
if(!$_POST["diadiem"])
{
	?>
    <script type="text/javascript" src="js/kiemtradiadiem.js"></script>

    
    <?php

}
else
{
	$lenh = "select * from khachhang where user='".$_SESSION["user"]."'";
	$kq = mysql_query($lenh);
	$row = mysql_fetch_array($kq);
	$makh = $row[Makhachhang];
	$thoidiemgiaohang = $_POST["nam"]."-".$_POST["thang"]."-".$_POST["ngay"];
	$thoidiemdathang = date("Y-m-d");
	$lenhthem = "insert into donhang(makhachhang,thoidiemdathang,thoidiemgiaohang,diadiemgiaohang,tennguoinhan)values('$makh','$thoidiemdathang','$thoidiemgiaohang','".$_POST["diadiem"]."','".$_SESSION["user"]."')";
	$kqthem = mysql_query($lenhthem);
	
}

?>
<form id="formdathang" name="formdathang" method="post" action="">
  <p>Xin chào: <?php  echo $_SESSION["user"];            ?>
</p>
  <p>Hãy điền đầy đủ thông tin vào </p>
  <table width="500" border="1" cellspacing="0" cellpadding="0" bgcolor="#FFFFCC" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td width="178">Thời điểm giao hàng</td>
      <td width="316">Ngày 
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
        
      </select> Tháng <select name="thang" id="thang">
      <?php
		for($i = 1; $i<= 12; $i++)
		{
			if($i == date("m"))
			echo"<option value='$i' selected>$i</option>";
			else
					echo"<option value='$i'>$i</option>";
		}
		?>
      </select>
      Năm <select name="nam" id="nam">
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
      <td>Địa điểm giao hàng</td>
      <td><label for="diadiem"></label>
      <input name="diadiem" type="text" id="diadiem" size="40" /></td>
    </tr>
  </table>
  <p>
    <input type="submit" name="dathang" id="dathang" value="Đặt hàng" onclick="kiemtradiadiem()" />
  </p>
</form>
</body>
</html>