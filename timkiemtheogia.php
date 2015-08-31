<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang tìm kiếm</title>
<script type="text/javascript" src="js/kttim.js"></script>
<script>
function validForm(){
var ten = document.getElementById('ten');
var filter = /[a-zA-Z0-9]/;
if(!filter.test(ten.value)){
document.formtim.ten.focus();
return false;
}
}

</script>
<link href="style/timtheogia.css" rel="stylesheet" type="text/css" />
</head>

<body>
<?php
if(!$_GET["gia_tu"]&&!$_GET["gia_den"])
{
$gia_tu = $_POST["gia_tu"];
$gia_den = $_POST["gia_den"];
}
else
{
$gia_tu = $_GET["gia_tu"];
$gia_den = $_GET["gia_den"];
}
include("kn.php");
$lenh = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and dongia >= $gia_tu and dongia <= $gia_den";
$kq = mysql_query($lenh);
$n = mysql_num_rows($kq);
if($n > 0)
{
	$tb = "Tìm thấy ".$n." laptop";
}
else
{
	$tb = "Không tìm thấy!";
	
}

$sodong = 4;
$sotrang = ceil($n/$sodong);
if(!$_GET["p"])
$p = 1;
else
$p = $_GET["p"];
$x = ($p-1)*$sodong;
$lenh1 = "select hinh, tenlaptop, tenhanglaptop,tenloai,concat(soluong,' Cái') as soluong,concat(format(dongia,0),' VNĐ') as dongia,malaptop from laptop, hanglaptop,loailaptop where laptop.mahanglaptop = hanglaptop.mahanglaptop and laptop.maloailaptop=loailaptop.maloailaptop and dongia >= $gia_tu and dongia <= $gia_den limit $x,$sodong";
$kq1 = mysql_query($lenh1);

?>
<form id="formtim" name="formtim" method="post" action="index.php?act=timkiemtheogia" enctype="multipart/form-data" onsubmit="return  validForm()">
  <table width="550" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFF99" bordercolor="#FFCCCC" style="border-collapse:collapse">
    <tr>
      <td height="35" colspan="2" align="center" bgcolor="#FFFF66">TÌM KIẾM </td>
    </tr>
    <tr>
      <td width="175" align="center">Tên laptop :      </td>
      <td width="354"><select name="gia_tu" class="theogia" id="gia_tu" style="width:130px;">
        <option value="0">-- Giá từ --</option>
        <?php
		for($i = 500000;$i<=30000000;$i+=500000)
		{
			?>
            <option value="<?php  echo $i;  ?>"<?php  if($_POST["gia_tu"]==$i||$_GET["gia_tu"]==$i){  ?>selected<?php }  ?>><?php  echo number_format($i,0,',','.');  ?></option>
            <?php
						
		}
		
		?>
        
      </select><input type="submit" name="tim" id="tim" value="Tìm" onclick="kiemtratim()" /></td>
    </tr>
    <tr>
      <td align="center">Hãng laptop</td>
      <td><select name="gia_den" class="theogia" id="gia_den" style="width:130px;">
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
      <td colspan="2" align="center"><?php   if(isset($gia_tu)||isset($gia_den)) echo $tb;    ?></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
      
     
     <?php
	 if(isset($gia_tu)||isset($gia_den))
	 {
while($row = mysql_fetch_array($kq1))
  {
$mt =  str_replace($ten,'<span style="background-color:#FF0;color:#F00">'.$ten.'</span>',$row[1]);
	  ?>

	
   <font color="#FF0000"><b> Tên laptop:</b></font>
    <a href="index.php?idlaptop=<?php echo $row[6];     ?>"><?php
	echo $mt;
	?></a>
    <br/>
    <font color="#003399">Hãng laptop:</font>
    <?php
	echo $row[2];
	?>
    <br/>
    <font color="#FF00FF">Loại laptop:</font>
    <?php
	echo $row[3];
	?> - 
    <?php
	echo $row[4];
	?>
     - 
     <?php
	echo $row[5];
	?>
    <br/>
    <img src="laptop/<?php
	echo $row[0];
	?>" width="150" height="100" />
   
    <br/>
   
    
  <?php
  }
	 }
?>	
      </td>
    </tr>
  </table>
</form>
<p align="center" style="clear:both">
<?php
 if(isset($gia_tu)||isset($gia_den))
	 {
for($i = 1; $i <= $sotrang;$i++)
{
	if($i==$p)
	{
		echo $i."&nbsp;";		
	}
	else
	{
		?>
        <a href="index.php?act=timkiemtheogia&gia_tu=<?php  echo $gia_tu;  ?>&gia_den=<?php  echo $gia_den;  ?>&p=<?php echo $i;    ?>"><?php  echo $i;   ?></a>
        
        <?php		
	}	
}
	 }
?>
</p>
</body>
</html>