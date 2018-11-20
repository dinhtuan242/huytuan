<?php 
    session_start(); ?>
<!DOCTYPE html>
<html>
    <head>
        <title>VIETSOZSHOP V1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="image/x-icon" rel="shortcut icon" href="images/favicon1.png"/>
        <link href="public/css/bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="public/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/style.css" rel="stylesheet" type="text/css"/>
        <link href="public/responsive.css" rel="stylesheet" type="text/css"/>

        <script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>
        <script src="public/js/elevatezoom-master/jquery.elevateZoom-3.0.8.min.js" type="text/javascript"></script>
        <script src="public/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
        <script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>
        <script src="public/js/main.js" type="text/javascript"></script>
    </head>
    <body>
        <div id="site">
            <div id="container">
                <div id="header-wp">
                    <div class="wp-inner clearfix">
                        <a href="?page=home" title="" id="logo" class="fl-left">
                            <img src="public/images/logo1.png" alt="">
                        </a>
                        <ul id="main-menu" class="fl-left">
                            <li>
                                <a href="?page=home" title="">Trang chủ</a>
                            </li>
                            <li>
                                <a href="?page=detail_news&id=3" title="">Về chúng tôi</a>
                            </li>
                            <li>
                                <a style="cursor: pointer;" title="">Sản phẩm</a>
                                <ul class="sub-menu">
                                <?php
                                  // $cat = $_GET['id'];
                              
                                  include("config/dbconfig.php");
                                  $sql = "SELECT * from tbl_category";
                                  $run = mysqli_query($conn, $sql);
                                  $i = 0;
                                  while ($row = mysqli_fetch_array($run)) {
                                    $i++;
                                ;?>
                                    <li>
                                        <a href="?page=category_product&id=<?php echo $row['id']?>" title=""><?php echo $row['title']?></a>
                                    </li>
                                <?php } ?>
                                </ul>
                            </li>
                            <li>
                                <a href="?page=category_news" title="">Bài viết</a>
                            </li>
                            <li>
                                <a href="?page=detail_news&id=4" title="">Thanh toán</a>
                            </li>
                            <li>
                                <a href="?page=detail_news" title="">Liên hệ</a>
                            </li>
                        </ul>
                        <div id="action-wp" class="fl-right">
                            <!-- <div id="search-wp" class="fl-left">
                                <button type="button" class="btn" data-toggle="modal" data-target="#form-search-wp">
                                    <i class="fa fa-search"></i>
                                </button>
                                <div class="modal fade" id="form-search-wp" tabindex="-1" role="dialog" aria-labelledby="lable">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <h1 class="title">Nhập từ khóa:</h1>
                                            <form id="form-s" method="POST" action="">
                                                <input type="text" name="s" id="s">
                                                <button type="submit" id="btn-s"><i class="fa fa-search"></i></button>
                                            </form>
                                            <div class="thumb">
                                                <img src="public/images/bg-s.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                            <div id="cart-wp" class="fl-right">
                                <a href="?page=cart" title="" id="btn-cart">
                                    <i class="fa fa-shopping-basket"></i>
                                    <span id="num"><?php 
                                    $tonghang=0;
                                    if (isset($_SESSION['cart'])) {
                                        foreach ($_SESSION['cart'] as $idproduct=>$soluong) {
                                            $tonghang += $soluong;
                                        }
                                        echo $tonghang;
                                    }else {
                                        echo $tonghang;
                                    } ?></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>