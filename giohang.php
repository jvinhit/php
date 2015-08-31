<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Giỏ hàng</title>
</head>

<body>
<?php
$Malaptop = $_GET["Malaptop"];
include("kn.php");
$kt = 0;
for($i = 1; $i <= $_SESSION["tongsp"];$i++)
{
	if($_GET["Malaptop"]==$_SESSION["Malaptop".$i])
	{
		$_SESSION["Soluong".$i]++;
		$kt = 1;
		break;	
		
	}
}
	if($kt==0)
	{
		$lenh = "select * from laptop where Malaptop='$Malaptop'";
		$kq = mysql_query($lenh);
		$n = mysql_num_rows($kq);
		if($n > 0)
		{
			$row = mysql_fetch_array($kq);
			$_SESSION["tongsp"]++;
			$j = $_SESSION["tongsp"];
			session_register($_SESSION["Malaptop"]);
			$_SESSION["Malaptop".$j]=$row["Malaptop"];
					session_register($_SESSION["Tenlaptop"]);
			$_SESSION["Tenlaptop".$j]=$row["Tenlaptop"];
					session_register($_SESSION["Dongia"]);
			$_SESSION["Dongia".$j]=$row["Dongia"];
					session_register($_SESSION["Soluong"]);
			$_SESSION["Soluong".$j]= 1;
			
		}
	
	}
	
?>
<form id="form1" name="form1" method="post" action="capnhatgiohang.php">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td colspan="6" align="center"><p><strong>DANH SÁCH ĐẶT HÀNG</strong></p>
      <p><strong>
        <input type="button" name="tieptucdathang" id="tieptucdathang" value="Tiếp tục đặt hàng" onclick="javascript:history.go(-1)" />
      </strong></p>
      <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td align="center">STT</td>
      <td align="center">Tên laptop</td>
      <td align="center">Đơn giá</td>
      <td align="center">Số lượng</td>
      <td align="center">Thành tiền</td>
      <td align="center">Xóa</td>
    </tr>
    <?php
	for($i = 1; $i <=  $_SESSION["tongsp"];$i++)
	{
		?>
    <tr>
      <td align="center"><?php  echo $i;  ?></td>
      <td align="center"><?php echo $_SESSION["Tenlaptop".$i];  ?></td>
      <td align="center"><?php echo $_SESSION["Dongia".$i];  ?></td>
      <td align="center"><label for="soluong"></label>
      <input name="C<?php echo $i;   ?>" type="text" id="soluong" size="10" value="<?php echo $_SESSION["Soluong".$i];  ?>" /></td>
      <td align="center"><?php echo $_SESSION["Soluong".$i]*$_SESSION["Dongia".$i];  ?></td>
      <td align="center"><input type="checkbox" name="X<?php echo $i;   ?>" id="xoa" />
      <label for="xoa"></label></td>
      
    </tr>
    <?php
	}
	?>
  </table>
  <?php
  function tongtien()
  {
	  $s = 0;
	  for($i = 1; $i <= $_SESSION["tongsp"];$i++)
	  {
		  $s = $s + $_SESSION["Soluong".$i]*$_SESSION["Dongia".$i];
		    
		  
	  }
	return $s;  
  }
  
  ?>
  <p align="center">Tổng tiền: <font color="#FF0000"><b><?php echo number_format(tongtien(),0,',','.');       ?></b></font> VNĐ</p>
  <p align="center">
    <input type="submit" name="capnhat" id="capnhat" value="Cập nhật" />
    <input type="button" name="dathang" id="dathang" value="Đặt hàng" onclick="location.href='dathang.php'" />
    <input type="submit" name="xoa" id="xoa" value="Xóa" />
  </p>
</form>
</body>
</html>