<div id="main-content-wp" class="list-product-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_product" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Danh sách banner</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        <?php require 'inc/sidebar.php'; ?>
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <ul class="post-status fl-left">
                            <li class="all"><a href="">Tất cả <span class="count">(69)</span></a> |</li>
                            <li class="publish"><a href="">Đã đăng <span class="count">(51)</span></a> |</li>
                            <li class="pending"><a href="">Chờ xét duyệt<span class="count">(0)</span></a></li>
                            <li class="pending"><a href="">Thùng rác<span class="count">(0)</span></a></li>
                        </ul>
                        <form method="POST" action="" class="form-s fl-right">
                            <input type="text" name="s" id="s">
                            <input type="submit" name="sm_s" value="Tìm kiếm">
                        </form>
                    </div>
                    <div class="actions">
                        <form method="GET" action="" class="form-actions">
                            <select name="actions">
                                <option value="0">Tác vụ</option>
                                <option value="1">Công khai</option>
                                <option value="1">Chờ duyệt</option>
                                <option value="2">Bỏ vào thủng rác</option>
                            </select>
                            <input type="submit" name="sm_action" value="Áp dụng">
                        </form>
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
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">ID</span></td>
                                    <td><span class="thead-text">Tiêu Đề</span></td>
                                    <td><span class="thead-text">Hình Ảnh</span></td>
                                    <td><span class="thead-text">Thực Hiện</span></td>

                                </tr>
                            </thead>
                            <tbody>
                                <?php
                              // Bước 1: Kết nối đến CSDL
                                include("../config/dbconfig.php");

                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                                if (isset($_POST['s'])) {
                                    if ($_POST['s'] != '') {
                                        $s = $_POST['s'];
                                        $sql = "select * from tbl_banner where id LIKE '%$s%' order by id desc limit $trang,8";
                                    }else {
                                        $sql = "select * from tbl_banner order by id desc limit $trang,8";
                                    }
                                }else{
                                    $sql = "select * from tbl_banner order by id desc limit $trang,8"; 
                                }
                                $run = mysqli_query($conn, $sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
                                <tr>
                                    <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                    <th scope="row"><?php echo $i;?></th>
                                    <td><span class="tbody-text"><?php echo $row["id"];?></h3></span>
                                    
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="" title=""><?php echo $row["title"];?></a>
                                        </div>
                                        <ul class="list-operation fl-right">
                                            <li><a href="?page=change_banner&id=<?php echo $row['id'];?>" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="?page=delete_banner&id=<?php echo $row['id'];?>" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div class="tbody-thumb">
                                            <img src="index.php/../../images/banner/<?php echo $row['image']?>" alt="">
                                        </div>
                                    </td>
                                    <td><span class="tbody-text"><?php echo $row["active"];?></h3></span>

                                </tr>
                                  <?php
                              }
                              ;?>
                            </tbody>
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">ID</span></td>
                                    <td><span class="thead-text">Tiêu Đề</span></td>
                                    <td><span class="thead-text">Hình ảnh</span></td>

                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
            
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <p id="desc" class="fl-left">Chọn vào checkbox để lựa chọn tất cả</p>
                    <ul id="list-paging" class="fl-right">
                        <li>
                            <a href="" title=""><</a>
                        </li>
                        <?php
                            $sql_trang = "select * from tbl_banner";
                            $run_trang = mysqli_query($conn,$sql_trang);
                            $sosanpham = mysqli_num_rows($run_trang);
                            $sotrang = ceil($sosanpham/8);
                            if ($sotrang == 0){
                                echo ' Không có sản phẩm nào!';
                            }
                            else{ 
                                echo ' ';
                            }
                            for($b=1;$b<=$sotrang;$b++){
                                echo '<li><a href="?page=list_banner&trang='.$b.'" style="text-decoration:none">'.' '.$b.' '.'</a></li>';
                            }
                            ?>
                        <li>
                            <a href="" title="">></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>