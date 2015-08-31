<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>trang menu 1</title>
<script type="text/javascript" src="sdmenu.js"></script>

<link href="sdmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">// <![CDATA[
var myMenu;window.onload = function() {myMenu = new SDMenu("my_menu");myMenu.init();};
// ]]></script>

</head>

<body>
<div id="left">
<?php
include("kn.php");
$lenhtl = "select * from theloai";
$kqtl = mysql_query($lenhtl);
while($rowtl = mysql_fetch_array($kqtl))
{
?>
<div style="float: left" id="my_menu" class="sdmenu">
      <div>
        <span><?php echo $rowtl[TenTL];   ?></span>
        <?php
		$MaTL = $rowtl[MaTL];
		$lenhlt = "select * from loaitin where MaTL='$MaTL'";
		$kqlt = mysql_query($lenhlt);
		
		?>
         <?php
		while($rowlt = mysql_fetch_array($kqlt))
		{
			?>
        <a href="#">
       
		<?php 	echo $rowlt[TenLT];	?><br />		
			            
        </a>
        <?php
		}
		?>
                
       </div>
       <?php
}
?>
</div>

</div>
</body>
</html>