<?php
$act = $_GET["act"];
if(!$act&&!$_GET["idhang"]&&!$_GET["idlaptop"]&&!$_GET["idtin"])
include("spmoi.php");
else if($_GET["idhang"])
include("listspdangcotdiv.php");
else if($_GET["idtin"])
include("chitiettinmoi.php");
else if($_GET["idlaptop"])
include("chitietlaptop.php");
else if($act==gt)
include("gioithieu.php");
/*else if($act==dd)
include("diendan.php");*/
else if($act==bg)
include("download.php");
else if($act==lh)
include("lienhe.php");
else if($act==tt)
include("tintuc.php");
else if($act==gh)
include("giohang.php");
else if($act==timkiemtheogia)
include("timkiemtheogia.php");
else if($act==dk)
include("dangky.php");
else if($act==qmk)
include("quenmatkhau.php");
else
include("timkiemnangcao.php");

?>