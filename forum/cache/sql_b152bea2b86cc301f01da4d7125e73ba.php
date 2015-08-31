<?php

/* SELECT forum_id, forum_name, parent_id, forum_type, left_id, right_id FROM phpbb_forums ORDER BY left_id ASC */

$expired = (time() > 1355801449) ? true : false;
if ($expired) { return; }

$this->sql_rowset[$query_id] = unserialize('a:5:{i:0;a:6:{s:8:"forum_id";s:1:"1";s:10:"forum_name";s:25:"Nhóm chuyên mục nháp";s:9:"parent_id";s:1:"0";s:10:"forum_type";s:1:"0";s:7:"left_id";s:1:"1";s:8:"right_id";s:1:"4";}i:1;a:6:{s:8:"forum_id";s:1:"2";s:10:"forum_name";s:19:"Chuyên mục nháp";s:9:"parent_id";s:1:"1";s:10:"forum_type";s:1:"1";s:7:"left_id";s:1:"2";s:8:"right_id";s:1:"3";}i:2;a:6:{s:8:"forum_id";s:1:"3";s:10:"forum_name";s:9:"Tin tức";s:9:"parent_id";s:1:"0";s:10:"forum_type";s:1:"1";s:7:"left_id";s:1:"5";s:8:"right_id";s:2:"10";}i:3;a:6:{s:8:"forum_id";s:1:"4";s:10:"forum_name";s:2:"HP";s:9:"parent_id";s:1:"3";s:10:"forum_type";s:1:"1";s:7:"left_id";s:1:"6";s:8:"right_id";s:1:"7";}i:4;a:6:{s:8:"forum_id";s:1:"5";s:10:"forum_name";s:4:"Acer";s:9:"parent_id";s:1:"3";s:10:"forum_type";s:1:"1";s:7:"left_id";s:1:"8";s:8:"right_id";s:1:"9";}}');

?>