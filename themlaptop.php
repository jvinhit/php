<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thêm laptop</title>
<link href="style/themlaptop.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.ui.core.js"></script>
<script type="text/javascript" src="jquery.ui.datepicker.js"></script>

<link href="jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script>
$(document).ready(function() {
$("#ngaynhap").datepicker({
numberOfMonths: 1,  dateFormat: 'yy/mm/dd',
monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín', 
'Mười','Mười một','Mười hai'] ,
monthNamesShort: ['Tháng1','Tháng2','Tháng3','Tháng4','Tháng5',
'Tháng6','Tháng7','Tháng8','Tháng9','Tháng10','Tháng11','Tháng12'] ,
dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm',
 'Thứ sáu', 'Thứ bảy'],
dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'] ,
showWeek: true , showOn: 'both',
changeMonth: true , changeYear: true,
currentText: 'Hôm nay', weekHeader: 'Tuần'
});
});
</script>

</head>

<body>
<?php
include("kn.php");
$malaptop = $_POST["malaptop"];
$tenlaptop = $_POST["tenlaptop"];
$hang = $_POST["hang"];
$loai = $_POST["loai"];
$mota = $_POST["mota"];
$soluong = $_POST["soluong"];
$dongia = $_POST["dongia"];
$hinh = $_FILES["hinh"]["name"];
$ngaynhap = $_POST["ngaynhap"];
$noibat = $_POST["noibat"];
if(isset($_POST["them"]))
{
	$lenhthem = "insert into laptop values('$malaptop','$tenlaptop','$hang','$loai','$mota','$soluong','$dongia','$hinh','$ngaynhap','$noibat')";
	$kqthem = mysql_query($lenhthem);
	move_uploaded_file($_FILES["hinh"]["tmp_name"],"laptop/".$_FILES["hinh"]["name"]);
	?>
    <script>
	alert('Thêm thành công!');
	</script>
    <?php
	
	
}

?>
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td height="35" colspan="2" align="center" bgcolor="#FFFF99"><strong>THÊM LAPTOP</strong></td>
    </tr>
    <tr>
      <td width="167" style="padding-left:10px;">Mã laptop</td>
      <td width="377"><label for="malaptop"></label>
      <input name="malaptop" type="text" class="themlaptop" id="malaptop" size="40" value="<?php  echo $_POST["malaptop"];  ?>" /></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Tên laptop</td>
      <td><label for="tenlaptop"></label>
      <input name="tenlaptop" type="text" class="themlaptop" id="tenlaptop" size="40" value="<?php  echo $_POST["tenlaptop"];  ?>"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Hãng laptop</td>
      <td><label for="hang"></label>
        <select name="hang" class="themlaptopCopy" id="hang">
        <?php
		include("kn.php");
		$lenhhang = "select * from hanglaptop";
		$kqhang = mysql_query($lenhhang);
		while($rowhang = mysql_fetch_array($kqhang))
		{
			echo"<option value='$rowhang[0]'>$rowhang[1]</option>";
		}
		?>
        
      </select></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Loại laptop</td>
      <td><label for="loai"></label>
        <select name="loai" class="themlaptopCopy" id="loai">
         <?php
		include("kn.php");
		$lenhloai = "select * from loailaptop";
		$kqloai = mysql_query($lenhloai);
		while($rowloai = mysql_fetch_array($kqloai))
		{
			echo"<option value='$rowloai[0]'>$rowloai[1]</option>";
		}
		?>
      </select></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Mô tả</td>
      <td><label for="mota"></label>
      <textarea name="mota" cols="40" rows="4" class="themlaptopCopy" id="mota"><?php  echo $_POST["mota"];  ?>
        </textarea></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Số lượng</td>
      <td><label for="soluong"></label>
      <input name="soluong" type="text" class="themlaptop" id="soluong" size="30" value="<?php  echo $_POST["soluong"];  ?>"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Đơn giá</td>
      <td><label for="dongia"></label>
      <input name="dongia" type="text" class="themlaptop" id="dongia" size="30" value="<?php  echo $_POST["dongia"];  ?>"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Hình</td>
      <td><label for="hinh"></label>
      <input name="hinh" type="file" class="themlaptop" id="hinh" size="30" /></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Ngày nhập</td>
      <td><label for="ngaynhap"></label>
      <input name="ngaynhap" type="text" class="themlaptop" id="ngaynhap" size="40" value="<?php  echo $_POST["ngaynhap"];  ?>"/></td>
    </tr>
    <tr>
      <td style="padding-left:10px;">Nổi bật</td>
      <td>
      <?php
	  if($_GET["noibat"]==1)
      echo"<input type='radio' name='noibat' id='noibat' value='1' checked/>
      <label for='noibat'>Nổi bật 
        <input type='radio' name='noibat'id='thuong' value='0' />
      Thường</label>";
	  else
	     echo"<input type='radio' name='noibat' id='noibat' value='1'/>
      <label for='noibat'>Nổi bật 
        <input type='radio' name='noibat'id='thuong' value='0' checked/>
      Thường</label>";
	  ?>
      </td>
    </tr>
    <tr>
      <td height="30" colspan="2" align="center"><input type="submit" name="them" id="them" value="Thêm laptop" /></td>
    </tr>
  </table>
</form>
</body>
</html>