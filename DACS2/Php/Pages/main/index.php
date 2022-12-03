<?php 
    $sql_pro = "SELECT * FROM tbl_sanpham, tbl_danhmuc 
                WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id_danhmuc
                ORDER BY tbl_sanpham.id_sanpham DESC LIMIT 15";
    $query_pro = mysqli_query($mysqli, $sql_pro);
?>
<h1 style="text-align: center;">Sản Phẩm Mới Nhất</h1>
<div class="align-center" style="display: inline-block!important;">
    <div class="row1">
        <?php 
            while($row = $query_pro -> fetch_array()){
        ?>
        <div class="col-33">
            <a href="/Php/index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                <img src="../../../Admin/modules/quanlysp/uploads/<?php echo $row['hinhanh']?>" style="width: 100%">
                <p style="font-weight: bold; font-size: 25px; margin-top: 10px;"><?php echo $row['tensanpham']?></p>
                <p style="font-size: 20px;" class="price">
                    <?php echo number_format($row['giasp'],0,',','.').' ₫'?>
                </p>
                <p style="font-size: 20px; color: #d1d1d1;" class="price"><?php echo $row['tendanhmuc']?></p>
            </a>
        </div>
        <?php
        }  
        ?>
    </div>    
</div>