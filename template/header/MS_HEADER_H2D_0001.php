<?php 
    if (!isset($_SESSION['kho'])) {
        $_SESSION['kho'] = 1;
    }
    function kho () {
        global $conn_vn;
        if (isset($_POST['xn_kho'])) {
            $kho = $_POST['kho'];
            if ($kho == 1) {
                $_SESSION['kho'] = 1;
            } else {
                $_SESSION['kho'] = 2;
            }
        }
    }
    kho();
?>
<!--MENU MOBILE-->
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
<style>
header {
    position: fixed;
    z-index: 9999;
    width: 100%;
    background: 
}
.gb-header-between_ruouvang {
    background: #ffffffd9;
}

.flag-menu img {
    width: 20px;
}
.flag-menu img.active {
    border: 2px solid #d0142c;
}
.flag-menu ul {
    /*margin-top: 20px;*/
}
.flag-menu ul li {
    display: flex;
    align-items: center;
    margin-top: 5px;
    cursor: pointer;
}
.flag-menu ul li:hover img {
    border: 2px solid #d0142c;
}
.flag-menu ul li .red {
    color: red;
}
.flag-menu ul li:hover span {
    color: red;
}
</style>

<?php include_once DIR_MENU."MS_MENU_H2D_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>

    <div class="gb-header-ruouvang">
      
      

        <div class="gb-header-between_ruouvang" id="bg_header">

            <div class="container">

                <div class="row" style="display: flex; align-items: center;">   
                    <div class="col-md-1">
                    
                                <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo']?>" alt=""></a>
                        
                    </div>

                    <div class="col-md-10 col-sm-12">

                      

                        <?php include DIR_MENU."MS_MENU_H2D_0001.php";?>

                    
                       

                    </div>

                    <div class="col-md-1 flag-menu">
                        <ul>
                            <li><img src="/images/ptd_en.jpg" alt="vietnam" class="<?= $lang=='en' ? 'active' : '' ?>"  onclick="lang_en()"> &nbsp;  <span style="padding-left: 5px;" class="<?= $lang=='en' ? 'red' : '' ?>" >International Edition</span></li>
                            <li><img src="/images/ptd_vn.jpg" alt="international" class="<?= $lang=='vn' ? 'active' : '' ?>" onclick="lang_vn()"> &nbsp; <span style="padding-left: 5px;" class="<?= $lang=='vn' ? 'red' : '' ?>" >Vietnamese Edition</span></li>
                        </ul>
                    </div>


                    <div class="hidden-sm hidden-md hidden-lg mobile-nav">
                        <div class="menu-mobile-nav">
                            <span class="icon-bar"><i class="fa fa-bars" aria-hidden="true"></i></span>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>
<script>
    function close1(){
        $('.header-notifi').css("display","none");
    }
</script>

<!-- Modal -->
  <div class="modal fade" id="chon_kho" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Vui lòng chọn khu vực bạn muốn xem tồn kho:</h4>
        </div>
        <div class="modal-body">
          <form action="" method="post">
              <div class="form-group">
                <select name="kho" class="form-control">
                    <option value="1" <?= $_SESSION['kho']==1 ? 'selected' : '' ?> >Hà Nội</option>
                    <option value="2" <?= $_SESSION['kho']==2 ? 'selected' : '' ?> >Hồ Chí Minh</option>
                </select>
              </div>
              
              <button type="submit" name="xn_kho" class="btn btn-danger">Xác nhận</button>
            </form>
        </div>
        
      </div>
      
    </div>
  </div>