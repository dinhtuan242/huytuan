<!DOCTYPE html>
<html>
<head>

<title>Đăng nhập</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="public/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="public/login_style.css" type="text/css" media="all">
<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>

<body>

	<h1>ĐĂNG NHẬP HỆ THỐNG</h1>

	<div class="w3layoutscontaineragileits">
	<h2>Login here</h2>
		<form action="pages/login_perform.php" method="post">
			<input type="email" Name="email" placeholder="EMAIL" required="">
			<input type="password" Name="password" placeholder="PASSWORD" required="">
			<ul class="agileinfotickwthree">
				<li>
					<input type="checkbox" id="brand1" value="">
					<label for="brand1"><span></span>Remember me</label>
					<a href="#">Forgot password?</a>
				</li>
			</ul>
			<div class="aitssendbuttonw3ls">
				<input type="submit" value="LOGIN">
				<div class="clear"></div>
			</div>
		</form>
	</div>
	
	
	<script type="text/javascript" src="public/js/jquery-2.2.4.min.js"></script>
	<script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
	
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>

</body>
</html>