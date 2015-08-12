<?php
session_start();
if($_SESSION['tk'] == 'admin' && $_SESSION['mk'] == 'admin'){
	$id_sp = $_GET['id_sp'];
	include_once('ketnoi.php');
	$sql = "DELETE FROM sanpham WHERE id_sp = $id_sp";
	$query = mysql_query($sql);
	header('location:quantri.php?page_layout=danhsachsp');
}
?>