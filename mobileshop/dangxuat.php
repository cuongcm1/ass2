<?php
session_start();
if($_SESSION['tk'] == 'admin' && $_SESSION['mk'] == 'admin'){
	session_unset($_SESSION['tk']);
	session_unset($_SESSION['mk']);
}
header('location:index.php');
?>