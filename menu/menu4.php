<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script language="javascript" type="text/javascript" src="jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="ddaccordion.js"></script>
<script type="text/javascript">
ddaccordion.init({
	headerclass: "submenuheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})
</script>
<link  href="menu.css" type="text/css" rel="stylesheet">
</head>

<body>

<div class="glossymenu">
<?php
include("kn.php");
$lenhtl = "select * from theloai";
$kqtl = mysql_query($lenhtl);
while($rowtl = mysql_fetch_array($kqtl))
{
?>
                    <a class="menuitem submenuheader" href="#"><?php echo $rowtl[TenTL];   ?></a>
                        <div class="submenu">
                        <?php
		$MaTL = $rowtl[MaTL];
		$lenhlt = "select * from loaitin where MaTL='$MaTL'";
		$kqlt = mysql_query($lenhlt);
		
		?>
                        	<ul>
                             <?php
		while($rowlt = mysql_fetch_array($kqlt))
		{
			?>
                        	   <li><a href="#"><?php 	echo $rowlt[TenLT];	?><br /></a>
                               </li>
                                                    <?php
		}
		?>
                              
                        	</ul>
         
                        </div>        
                
<?php
}
?>

                </div>


</body>
</html>