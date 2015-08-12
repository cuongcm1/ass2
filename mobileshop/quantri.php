<?php
ob_start();
session_start();
if($_SESSION['tk'] == 'admin' && $_SESSION['mk'] == 'admin'){	
	include_once('ketnoi.php');

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mobile Shop - Trang chủ quản trị</title>
<link rel="stylesheet" type="text/css" href="css/quantri.css" />
<?php
	switch($_GET['page_layout']){
		case 'danhsachsp': echo '<link rel="stylesheet" type="text/css" href="css/danhsachsp.css" />';
		break;
		
		case 'themsp': echo '<link rel="stylesheet" type="text/css" href="css/themsp.css" />';
		break;	
		
		case 'suasp': echo '<link rel="stylesheet" type="text/css" href="css/suasp.css" />';
		break;
	}
?>
</head>
<body>
<div id="wrapper">
	<div id="header">
    	<div id="navbar">
        	<ul>
            	<li id="admin-home"><a href="quantri.php">Quản lý sản phẩm</a></li>
            </ul>
            
        </div>
        <div id="banner">
        	<div id="logo"><a href="#"><img src="anh/logo.png" /></a></div>
        </div>
    </div>
    <div id="body">
        
        <?php
        	switch($_GET['page_layout']){
				case 'danhsachsp': include_once('danhsachsp.php');
				break;
				
				case 'themsp': include_once('themsp.php');
				break;	
				
				case 'suasp': include_once('suasp.php');
				break;	
				
				default: include_once('gioithieu.php');
			}
		?>
        
    </div>
</div>
</body>
</html>
<?php
}
else{
	header('location:index.php');	
}
?>