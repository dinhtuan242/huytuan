
<div id="main-content-wp" class="category-product-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">

                        <?php
                          // $cat = $_GET['id'];
                          $id = $_GET['id'];
                          include("config/dbconfig.php");
                          $sql = "SELECT * from tbl_category where id like '%$id%'";

                          $run = mysqli_query($conn, $sql);
                          $i = 0;
                          while ($row = mysqli_fetch_array($run)) {
                            $i++;
                        ;?>
                <h3 class="title fl-left"><?php echo $row['title']?></h3>
            <?php } ?>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                        <?php
                          // $cat = $_GET['id'];
                          $id = $_GET['id'];
                          include("config/dbconfig.php");
                          $sql = "SELECT * from tbl_category where id like '%$id%'";
                          $run = mysqli_query($conn, $sql);
                          $i = 0;
                          while ($row = mysqli_fetch_array($run)) {
                            $i++;
                        ;?>
                    <li>
                        <a title=""><?php echo $row['title']?></a>
                    </li><?php } ?>
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="filter-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <!-- <li>
                        <form method="POST" action="">
                            <select name="filter-price">
                                <option value="0">Lọc theo giá</option>
                                <option value="0">500.000đ - 2.000.000đ</option>
                                <option value="0">2.000.000đ - 5.000.000đ</option>
                                <option value="0">5.000.000đ - 10.000.000đ</option>
                                <option value="0">Trên 10.000.000đ</option>
                            </select>
                            <button type="submit" name="btn-filter-price" id="btn-filter-price">Lọc</button>
                        </form>
                    </li> -->
                    <li>
                        <form method="POST" action="" id="form-s-product">
                            <input type="text" name="s-product" id="s-product" placeholder="Tìm kiếm">
                            <button type="submit" name="btn-s-product" id="btn-s-product"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <?php
            if(isset($_GET['trang'])){
                $get_trang = $_GET['trang'];
            }
            else{
                $get_trang = '';
            }
            if ($get_trang == '' || $get_trang == 1){
                $trang = 0;
            }
            else
            {
                $trang = ($get_trang*8)-8;
            }


            ?>
    <div class="section" id="list-product-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <?php
                      // $cat = $_GET['id'];
                      $id = $_GET['id'];
                      include("config/dbconfig.php");
                    if (isset($_POST['s-product'])) {
                            if ($_POST['s-product'] != '') {
                            $s = $_POST['s-product'];
                            $sql = "select * from tbl_product where id LIKE '%$s%' or name LIKE '%$s%' order by id asc limit $trang,8";
                        }
                    }else{
                        $sql = "SELECT * from tbl_product where category like '%$id%'  limit $trang,8"; 
                    }
                      $run = mysqli_query($conn, $sql);
                      $i = 0;
                      while ($row = mysqli_fetch_array($run)) {
                        $i++;
                    ;?>
                    <li>
                        <a href="?page=detail_product&id=<?php echo $row['id'];?>" title="" class="thumb">
                            <img src="index.php/../images/product/<?php echo $row['image']?>" alt="">
                        </a>
                        <div class="info">
                            <a href="" title="" class="name-product"><?php echo $row['name']?></a>
                            <div class="price-wp">
                                <span class="new"><?php echo $row['price']?></span>
                                <span class="old"><?php echo $row['price']?></span>
                            </div>
                            <a href="?page=add_cart&id=<?php echo $row['id'] ?>" title="" class="buy-now">Mua ngay</a>
                        </div>
                    </li>
                <?php } ?>
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="pagination-wp">
        <div class="wp-inner">
            <div class="pagination">

            <?php
            $sql_trang = "select * from tbl_product where category = $id";
            $run_trang = mysqli_query($conn,$sql_trang);
            $sosanpham = mysqli_num_rows($run_trang);
            $sotrang = ceil($sosanpham/8);
            if ($sotrang == 0){
                echo 'Không có sản phẩm nào!';
            }
            else{
                echo '';
            
            for($b=1;$b<=$sotrang;$b++){
                echo '<a href="?page=category_product&id='.$id = $_GET['id'].'&trang='.$b.'" style="text-decoration:none">'.''.$b.''.'</a>';
            }}
            ?>           
            </div>
        </div>
    </div>
</div>