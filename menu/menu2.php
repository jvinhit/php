<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang menu2</title>
<script src="../SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="../SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
</head>

<body>
<ul id="MenuBar1" class="MenuBarVertical">
<?php
include("kn.php");
$lenhtl = "select * from theloai";
$kqtl = mysql_query($lenhtl);
while($rowtl = mysql_fetch_array($kqtl))
{
?>
  <li><a class="MenuBarItemSubmenu" href="#"><?php echo $rowtl[TenTL];   ?></a>
    <ul>
    <?php
		$MaTL = $rowtl[MaTL];
		$lenhlt = "select * from loaitin where MaTL='$MaTL'";
		$kqlt = mysql_query($lenhlt);
		
		?>
      <li>
         <?php
		while($rowlt = mysql_fetch_array($kqlt))
		{
			?>
      <a href="#"><?php 	echo $rowlt[TenLT];	?><br /></a>
        <?php
		}
		?>
      </li>
</ul>
  </li>
         <?php
}
?>
</ul>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"../SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>