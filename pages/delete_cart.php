<?php 
	session_start();
	$idproduct =$_GET['id'];
	if (isset($_SESSION['cart'])) {
		unset($_SESSION['cart'][$idproduct]);
	}
	if (isset($_SESSION['delete'])) {
		session_destroy();
	}
	echo '<script type="text/javascript">
                window.location.href="http://localhost:3408/huytuan/?page=cart";
            </script>';
?>