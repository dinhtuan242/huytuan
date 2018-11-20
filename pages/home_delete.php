<?php 
	session_start();
	if (isset($_SESSION['cart'])) {
		session_destroy();
	}
	echo '<script type="text/javascript">
				alert("Xóa giỏ hàng thành công");
                window.location.href="http://localhost:3408/huytuan/";
            </script>';
 ?>