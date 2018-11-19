<?php 
	session_start();
	if (isset($_SESSION['cart'])) {
		$_SESSION['cart'] = array();
		session_destroy();
	}
	echo '<script type="text/javascript">
                window.location.href="?page=home";
            </script>';
 ?>