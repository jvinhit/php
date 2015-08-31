<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang trái</title>
<link href="style/left.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.corner.js"></script>

<script> 
$(document).ready(function()
 { 
 $(".bangduoi").corner("bottom 8px");
  $("#theogia").corner("bottom 8px");
}); 
</script>
<link href="style/timtheogia.css" rel="stylesheet" type="text/css" />
<script>
function validForm_search(){
	if (document.search_form.gia_tu.selectedIndex=="0") {
			alert("Bạn chưa chọn giá từ");
			document.search_form.gia_tu.focus();
			return false;
		}
	if (document.search_form.gia_den.selectedIndex=="0") {
			alert("Bạn chưa chọn giá đến");
			document.search_form.gia_den.focus();
			return false;
		}
	if (document.search_form.gia_tu.selectedIndex > document.search_form.gia_den.selectedIndex) {
			alert("Giá đến không được nhỏ hơn giá từ");
			document.search_form.gia_den.focus();
			return false;
		}		
}
 
</script>

</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Laptop theo hãng</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td style="padding-left:35px;">
   <?php
   include("kn.php");
   $lenhhang = "select * from hanglaptop";
   $kqhang = mysql_query($lenhhang);
   while($rowhang = mysql_fetch_array($kqhang))
   {
	   ?>
       <a href="index.php?idhang=<?php echo $rowhang[0];   ?>"><?php  echo $rowhang[1];    ?></a><br/>
       <?php
	   
   }   
   
   ?>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Laptop theo giá</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td align="center">
   <form id="search_form" name="search_form" method="post" action="?act=timkiemtheogia" onsubmit="return  validForm_search()">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFF99" bordercolor="#FFCCCC" style="border-collapse:collapse" id="theogia">
    <tr>
      <td align="center"><label for="gia_tu"></label>
        <select name="gia_tu" class="theogia" id="gia_tu" style="width:130px;">
        <option value="0">-- Giá từ --</option>
        <?php
		for($i = 500000;$i<=30000000;$i+=500000)
		{
			?>
            <option value="<?php  echo $i;  ?>"<?php  if($_POST["gia_tu"]==$i||$_GET["gia_tu"]==$i){  ?>selected<?php }  ?>><?php  echo number_format($i,0,',','.');  ?></option>
            <?php
						
		}
		
		?>
        
      </select></td>
    </tr>
    <tr>
      <td align="center"><label for="gia_den"></label>
        <select name="gia_den" class="theogia" id="gia_den" style="width:130px;">
        <option value="0">-- Giá đến --</option>
        <?php
		for($i = 500000;$i<=30000000;$i+=500000)
		{
			?>
            <option value="<?php  echo $i;  ?>"<?php if($_POST["gia_den"]==$i||$_GET["gia_den"]==$i){ ?>selected<?php  }    ?>><?php  echo number_format($i,0,',','.');  ?></option>
            <?php
						
		}
		
		?>
      </select></td>
    </tr>
    <tr>
      <td height="30" align="center"><input type="submit" name="tim" id="tim" value="Tìm kiếm" style="border-radius:10px 10px 10px 10px; background-color:#CCFFCC; color:#FF0000;" /></td>
    </tr>
  </table>
</form>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Laptop mới nhất</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td style="padding-left:15px;">
	<?php
   include("kn.php");
   $lenhmoi = "select malaptop,left(tenlaptop,15) as tenlaptop from laptop order by ngaynhap desc limit 0,5";
   $kqmoi = mysql_query($lenhmoi);
   while($rowmoi = mysql_fetch_array($kqmoi))
   {
	   ?>
       <a href="index.php?idlaptop=<?php echo $rowmoi[0];   ?>"><?php  echo $rowmoi[1];    ?></a>&nbsp;<img src="image/new.gif" width="33" height="16" /><br/>
       <?php
	   
   }   
   
   ?>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Laptop bán chạy</td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td align="center">
    <?php
   include("kn.php");
   $lenhbc = "select donhangchitiet.malaptop,left(tenlaptop,15) as tenlaptop,hinh,concat(format(donhangchitiet.dongia,0),' VNĐ')as dongia, sum(donhangchitiet.soluong)as soluong from laptop,donhangchitiet where laptop.malaptop=donhangchitiet.malaptop group by donhangchitiet.malaptop,tenlaptop order by soluong desc limit 0,2";
   $kqbc = mysql_query($lenhbc);
   while($rowbc = mysql_fetch_array($kqbc))
   {
	   ?>
       <a href="index.php?idlaptop=<?php echo $rowbc[0];   ?>"><?php  echo $rowbc[1];    ?></a><br/>
       <img src="laptop/<?php  echo $rowbc[2];    ?>" width="150" height="100" alt="laptop"/>
       <br/>
       <font color="#FF0000"><b><?php  echo $rowbc[3];    ?></b></font>
       <br/>
       <?php
	   
   }   
   
   ?>
    </td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Giỏ hàng <img src="image/cat.gif" width="19" height="16" /></td>
    <td id="phai">&nbsp;</td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td align="center"><?php  include("khunggiohang.php");   ?></td>
  </tr>
</table>

<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td id="trai">&nbsp;</td>
    <td id="giua">Dự báo thời tiết</td>
    <td id="phai">&nbsp;
    
    </td>
  </tr>
</table>
<table width="200" border="0" cellspacing="0" cellpadding="0" class="bangduoi">
  <tr>
    <td>
    <iframe src="http://tienich.vnpec.com/weather/index-1.php" frameborder="0" height="230" scrolling="no" width="94%"></iframe>
    </td>
  </tr>
</table>
</body>
</html>