<?php
    if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
        unset($_SESSION['dangky']);
    }
?>
<header>  
    <div class="logo">
        <a href="/Php/index.php"><img style="height: 100px;" src="/Img/mk.png"></a>
    </div>
    <?php
        include("slidebar/slidebar.php");
    ?>
    <div class="others">
        <li>
            <form action="/Php/index.php?quanly=timkiem" method="POST">
                <div class="box">
                <div class="container-2">
                    <span class="icon"><i class="fa fa-search"></i></span>
                    <input type="search" name="tukhoa" id="search" placeholder="Search..." />
                </div>
        </form>
        <li>
            <a class="fa fa-file-invoice" href="#"></a>
        </li>
        <li>
            <a class="fa fa-shopping-bag" href="/Php/index.php?quanly=giohang"></a>
        </li>
        <?php
            if(isset($_SESSION['dangky'])){
        ?>
        <li>
            <a class="fa fa-right-to-bracket" href="/Php/index.php?dangxuat=1"></a>
        </li>
        <?php
            }else{
        ?>
        <li>
            <a class="fa fa-user" href="/Php/index.php?quanly=dangky"></a>
        </li>
        <?php
            }
        ?>
    </div>
</header>