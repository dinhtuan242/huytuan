<?php
	$tenmaychu="localhost";
	$tentaikhoan="root";
	$pass="";
	$csdl="huytuan";
	$site_url = 'http://localhost:3408/huytuan/';
	$site_admin = 'http://localhost:3408/huytuan/admin/';
	$conn=mysqli_connect($tenmaychu, $tentaikhoan, $pass, $csdl) or die("Không kết nối được");
	mysqli_set_charset($conn,"utf8");
?>