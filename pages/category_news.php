<div id="main-content-wp" class="category-news-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">Bài viết mới</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Bài viết mới</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div id="content" class="fl-left">
            <div class="section" id="list-news-wp">
                <div class="section-detail">
                    <?php 
                            include("config/dbconfig.php");
                          //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                           $sql = "select * from tbl_post";
                           $run = mysqli_query($conn, $sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                     ?>
                    <ul class="list-item">
                        <li class="clearfix">
                            <a href="?page=detail_news&id=<?php echo $row['id']; ?>" title="" class="thumb fl-left">
                                <img src="index.php/../images/post/<?php echo $row['image'] ?>" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_news&id=<?php echo $row['id']; ?>" title="" class="title"><?php echo $row['title'] ?></a>
                                <p class="desc"><?php echo $row['mota']; ?></p>
                            </div>
                        </li>
                    </ul>
                <?php } ?>
                </div>
            </div>
            <div class="section" id="pagination-wp">
                <div class="wp-inner">
                    <div class="pagination">
                        <strong>1</strong>
                        <a href="" title="">2</a>
                        <a href="" title>3</a>
                        <a href="">&gt;</a>                    
                    </div>
                </div>
            </div>
        </div>
        <div id="sidebar" class="fl-right">
            <div class="section" id="category-wp">
                <div class="section-head">
                    <h3 class="section-title">Danh mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        <li>
                            <a href="" title="">Thời trang xuân hè</a>
                        </li>
                        <li>
                            <a href="" title="">Thời trang thu đông</a>
                        </li>
                        <li>
                            <a href="" title="">Thời trang xuân hè</a>
                        </li>
                        <li>
                            <a href="" title="">Thời trang thu đông</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="section" id="list-popular-wp">
                <div class="section-head">
                    <h1 class="section-title">Sách bán chạy</h1>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-01.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">101 cách dạy con thành tài</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-02.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">Trâm Bầu</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-03.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">Quản lý dự án xây dựng</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-04.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">Xử thế</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-03.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">Đầm bầu Mango</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        <li class="clearfix">
                            <a href="?page=detail_product" title="" class="thumb fl-left">
                                <img src="public/images/img-product-02.png" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="?page=detail_product" title="" class="product-name">Đầm bầu Mango</a>
                                <span class="fee">250.000đ</span>
                                <a href="?page=detail_product" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>