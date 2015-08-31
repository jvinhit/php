<?php
$expired = (time() > 1387337386) ? true : false;
if ($expired) { return; }

$data =  unserialize('a:5:{s:4:"name";s:9:"AnimeZone";s:9:"copyright";s:22:"&copy; AnimeZone, 2007";s:7:"version";s:5:"2.0.0";s:14:"parse_css_file";b:0;s:8:"filetime";i:1198872972;}');

?>