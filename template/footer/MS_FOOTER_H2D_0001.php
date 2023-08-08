<?php 
    function ho_tro () {
        global $conn_vn;
        if (isset($_POST['ho_tro'])) {
            $phone = $_POST['phone'];
            $sql = "INSERT INTO ho_tro (phone) VALUES ('$phone')";

            $result = mysqli_query($conn_vn, $sql);

            if ($result) {
                echo '<script>alert(\'Bạn đăng ký hỗ trợ siêu nhanh thành công.\')</script>';
            } else {
                echo '<script>alert(\'Có lỗi xảy ra.\')</script>';
            }
        }
    }
    ho_tro();
?>
<script type="text/javascript">
function load_url(id, name, price) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // document.getElementById("demo").innerHTML = this.responseText;
            // alert(this.responseText);
            // alert('thanh cong.');
            // window.location.href = "/gio-hang";
            if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                window.location = '/gio-hang';
            } else {
                location.reload();
            }
        }
    };
    xhttp.open("POST", "/functions/ajax-add-cart.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("product_id=" + id + "&product_name=" + name + "&product_price=" + price + "&product_quantity=1&action=add");
    xhttp.send();
}
</script>
<footer class="site-footer footer-default">
    <!--  <div class="footer-main-content_ruouvang top">
        <div class="container">
            <div class="row">
                <h2><?=$rowConfig['web_name']?> </h2>
                <p>
                    Địa chỉ: <?=$rowConfig['content_home1']?> <br>
                    Tel: <?=$rowConfig['content_home3']?> 
                </p>
                <p>Email: <?=$rowConfig['content_home2']?> </p>
                <ul>
                    <li>
                        <a href="https://www.facebook.com/duhochanquochk/" style="color:    #fff;"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="https://www.youtube.com/channel/UCZ2hrrmEVwquvVK_eubY_GA" style="color: #fff;"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                    </li>
                    <li>
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                    </li>
                </ul>
                <div class="copy-right">
                    <p>Copyright © 2021 HKINCO | Powered by HKINCO</p>
                </div>
            </div>
        </div>
    </div> -->
    <div class="footer-main-content_ruouvang bot">
        <div class="container" style=" position: relative;">
            <div class="row">
                <div class="col-md-4">
                    <h2><?= $lang=='vn' ? 'THÔNG TIN LIÊN HỆ' : 'CONTACT INFO' ?></h2>
                <p>
                    <?=$rowConfig_lang['lang_web_name']?>
                </p>
                <p>
                    <?= $lang=='vn' ? 'Địa chỉ' : 'Address' ?>:
                    <?=$rowConfig_lang['lang_content_home1']?>
                </p>
                <p>Hotline: <?=$rowConfig['content_home3']?></p>
                <p>Email:
                    <?=$rowConfig['content_home2']?>
                </p>
                <div class="top footer-main-content_ruouvang" style="background:transparent; border: 0;padding: 15px 0;">
                    <ul style="display: flex; color: #fff;">
                        <li>
                            <a href="https://www.facebook.com/cngeducation/" style="color:    #fff;"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        </li>
                        <li><a href="" style="color: #fff;"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                        </li>
                        <li>
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                        </li>
                    </ul>
                </div>
                </div>
                <div class="col-md-4">
                    <h2>FANPAGE CNG EDUCATION</h2>
                    <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fcngeducation%2F%3Fref%3Dembed_page&tabs=timeline&width=340&height=500&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=484851048588987" width="100%" height="300" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                </div>
                <div class="col-md-4">
                    <h2><?= $lang=='vn' ? 'CHỈ ĐƯỜNG' : 'DIRECT' ?></h2>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.0341426482782!2d107.09799751152192!3d20.951143980598268!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a5957d82209fb%3A0x8f0bb3d917df1d8e!2zVHLGsOG7nW5nIFNvbmcgbmfhu68gUXXhu5FjIHThur8gSOG7jWMgdmnhu4duIEFuaCBRdeG7kWMgLSBVS0EgSOG6oSBMb25n!5e0!3m2!1svi!2s!4v1686638997678!5m2!1svi!2s" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="copy-right-m">
        <p>© Copyright 2017. All rights reserved. Design CAFELINK.ORG</p>
    </div>
    <!-- <div class="scrolltoTop">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </div> -->
</footer>
<!-- <div class="h-a-s">
    <div class="popup">
        <div class="popup-background">
            <div class="close_popup">&#10006;</div>
            <h2>HỖ TRỢ SIÊU NHANH</h2>
            <p>Chỉ cần để lại số điện thoại, trong vòng 01 giờ, HK INCO sẽ liên lạc & cung cấp cho bạn những thông tin hữu ích & chi tiết nhất về các khóa học ngoại ngữ & chương trình du học Hàn Quốc,…</p>
            <form action="" method="post">
                <input type="text" name="phone" placeholder="Số điện thoại" required="">
                <button name="ho_tro" onclick="send_nhanh()">Send</button>
            </form>
        </div>
    </div>
    <div class="over-lay">
    </div>
</div> -->
<!-- <script>    
    $('.close_popup').on('click',()=>{
        $('.popup').slideUp();

        setTimeout(()=>{$('.over-lay').slideUp()},500)
    })

</script>  -->
<script>
$(document).ready(function() {
    if (sessionStorage.getItem('popState') != 'shown') {
        // setTimeout(function(){ $(".h-a-s").css('display','inline-block');$('body').css('overflow','hidden') },2000); 
        setTimeout(() => { $('.over-lay').slideDown() }, 2000)
        setTimeout(function() { $(".popup").slideDown(); }, 2500);

    }

    $(".close_popup").click(function() {
        sessionStorage.setItem('popState', 'shown');
        $(".popup").slideUp();
        setTimeout(() => { $('.over-lay').slideUp() }, 500)
        // setTimeout(function(){ $(".h-a-s").css('display','none'); $('body').css('overflow','auto') },500);
    });

    $(".remove_session").click(function() {
        sessionStorage.setItem('popState', 'shown');

    });

});
</script>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        $(".scrolltoTop").css("display", "inline");
    } else {
        $(".scrolltoTop").css("display", "none");
    }

    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("bg_header").style.background = "#fff";
      } else {
        document.getElementById("bg_header").style.background = "#ffffffd9";
      }
}

// When the user clicks on the button, scroll to the top of the document
$('.scrolltoTop').on("click", function() {
    $('html, body').animate({ scrollTop: 0 }, 'slow');
});
</script>
<script>
function send_nhanh() {

    sessionStorage.setItem('popState', 'shown');

    // setTimeout(function(){ $(".h-a-s").css('display','none'); $('body').css('overflow','auto') },500)
}
</script>

<div class="social-fix show">
    <div class="list">
        <a data-toggle="modal" data-target="#tu-van" class="social-item" id="enquiry-now-fix">
            <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                <g clip-path="url(#clip0_2147_47909)">
                <path d="M12.1732 2.78858C12.1732 2.4132 12.0267 2.05983 11.7612 1.79433L10.4355 0.468641C10.1737 0.206797 9.802 0.0566406 9.43213 0.0566406H9.35156V2.86914H12.1732L12.1732 2.78858Z" fill="#D71F27"></path>
                <path d="M8.56053 9.72967C8.65025 9.4573 8.80681 9.2037 9.01097 8.99817L12.1848 5.83714V3.80664H8.89103C8.63194 3.80664 8.4375 3.59698 8.4375 3.33789V0.0566406H1.40625C0.630813 0.0566406 0 0.687453 0 1.46289V14.6504C0 15.4258 0.630813 16.0566 1.40625 16.0566H10.766C11.5415 16.0566 12.1848 15.4258 12.1848 14.6504V11.1519L11.6697 11.6545C11.4609 11.8615 11.2165 12.012 10.9409 12.1041L9.45044 12.6017L9.22338 12.614C8.848 12.614 8.49278 12.4314 8.27216 12.1256C8.05334 11.8212 7.99384 11.4266 8.11284 11.07L8.56053 9.72967ZM2.34375 8.49414H7.01603C7.27513 8.49414 7.48478 8.7038 7.48478 8.96289C7.48478 9.22198 7.27513 9.43164 7.01603 9.43164H2.34375C2.08466 9.43164 1.875 9.22198 1.875 8.96289C1.875 8.7038 2.08466 8.49414 2.34375 8.49414ZM1.875 7.08789C1.875 6.8288 2.08466 6.61914 2.34375 6.61914H7.01603C7.27513 6.61914 7.48478 6.8288 7.48478 7.08789C7.48478 7.34698 7.27513 7.55664 7.01603 7.55664H2.34375C2.08466 7.55664 1.875 7.34698 1.875 7.08789ZM1.875 10.8379C1.875 10.5788 2.08466 10.3691 2.34375 10.3691H7.01603C7.27513 10.3691 7.48478 10.5788 7.48478 10.8379C7.48478 11.097 7.27513 11.3066 7.01603 11.3066H2.34375C2.08466 11.3066 1.875 11.097 1.875 10.8379ZM8.89103 13.1816C9.15013 13.1816 9.35978 13.3913 9.35978 13.6504C9.35978 13.9095 9.15016 14.1191 8.89103 14.1191H6.07853C5.81944 14.1191 5.60978 13.9095 5.60978 13.6504C5.60978 13.3913 5.81944 13.1816 6.07853 13.1816H8.89103ZM2.34375 5.68164C2.08466 5.68164 1.875 5.47198 1.875 5.21289C1.875 4.9538 2.08466 4.74414 2.34375 4.74414H8.89103C9.15013 4.74414 9.35978 4.9538 9.35978 5.21289C9.35978 5.47198 9.15013 5.68164 8.89103 5.68164H2.34375Z" fill="#D71F27"></path>
                <path d="M9.40854 10.1445L9.00073 11.368C8.9396 11.5513 9.11401 11.7256 9.29729 11.6644L10.52 11.256L9.40854 10.1445Z" fill="#D71F27"></path>
                <path d="M13.052 6.28516L9.96484 9.37231L11.2962 10.7037C11.994 10.0058 13.3517 8.648 14.3833 7.61641L13.052 6.28516Z" fill="#D71F27"></path>
                <path d="M15.7263 4.94016C15.5615 4.77444 15.3189 4.67969 15.0616 4.67969C14.8043 4.67969 14.5617 4.77444 14.396 4.94062L13.7148 5.62178L15.046 6.95297C15.4189 6.58003 15.6767 6.32228 15.7272 6.27175C16.0934 5.90503 16.0934 5.30772 15.7263 4.94016Z" fill="#D71F27"></path>
                <path d="M15.7266 6.27165C15.7266 6.27165 15.7266 6.27161 15.7266 6.27158C15.728 6.27024 15.7286 6.26964 15.7297 6.26855C15.7286 6.26968 15.728 6.27028 15.7266 6.27165Z" fill="#D71F27"></path>
                <path d="M15.7305 6.26877C15.7318 6.26746 15.7333 6.26593 15.7341 6.26514C15.7333 6.26596 15.7318 6.26746 15.7305 6.26877Z" fill="#D71F27"></path>
                <path d="M15.7344 6.26497C15.7374 6.26197 15.7374 6.26191 15.7344 6.26497V6.26497Z" fill="#D71F27"></path>
                </g>
                <defs>
                <clipPath id="clip0_2147_47909">
                <rect width="16" height="16" fill="white" transform="translate(0 0.0566406)"></rect>
                </clipPath>
                </defs>
            </svg>
            <span><?= $lang=='vn' ? 'Đăng ký ngay' : 'Register now' ?></span>
            <svg class="arr" width="7" height="11" viewBox="0 0 7 11" fill="none">
                <path d="M5.75808 5.74697L1.59531 9.89822C1.45892 10.0342 1.23811 10.0339 1.10195 9.89752C0.965895 9.76113 0.966246 9.54019 1.10265 9.40416L5.01764 5.49998L1.10251 1.59583C0.966123 1.45977 0.965772 1.23897 1.10181 1.10257C1.17006 1.03419 1.25948 1 1.3489 1C1.43809 1 1.52716 1.03396 1.59529 1.10186L5.75808 5.25301C5.82377 5.31837 5.86063 5.40731 5.86063 5.49998C5.86063 5.59266 5.82366 5.68149 5.75808 5.74697Z" fill="#333333" stroke="#333333" stroke-width="0.5"></path>
            </svg>
        </a>
        
        
    </div>    
</div>
<style>
.social-fix {
    position: fixed;
    z-index: 50;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
    opacity: 0;
    pointer-events: none;
    transition: all .3s ease;
}
.social-fix.show {
    opacity: 1;
    pointer-events: all;
}
.social-item {
    position: relative;
    width: 190px;
    height: 40px;
    margin-right: 10px;
    background-color: #fff;
    display: flex;
    align-items: center;
    padding-left: 10px;
    font-family: AvenirLTStd-Heavy\.ttf;
    font-weight: 600;
    font-size: 12px;
    line-height: 21px;
    letter-spacing: .05em;
    text-transform: uppercase;
    color: #333;
    transition: all .3s ease;
}
.social-fix .social-item {
    position: relative;
    margin: 0 0 8px;
    transform: translateX(145px);
    padding-left: 15px;
    background-color: #d71f27;
    color: #fff;
    cursor: pointer;
}
.social-fix .social-item:hover {
    transform: translateX(0);
}
.social-fix .social-item img, .social-fix .social-item svg {
    filter: brightness(0) invert(1);
}
.social-fix .social-item:hover .arr, .social-fix .social-item:hover span {
    opacity: 1;
}
.social-item .arr {
    position: absolute;
    right: 12px;
    top: 50%;
    transform: translateY(-50%);
    margin: 0;
}
.social-item img, .social-item svg {
    margin-right: 15px;
    transition: all .3s ease;
}
@media screen and (max-width: 768px) {
    .social-fix.show .list a > span {
        display: none;
    }
    .social-fix .social-item {
        transform: none;
    }
    .social-item {
        width: auto;
    }
}
</style>

<a href="http://zalo.me/<?= preg_replace("/[^0-9]/", "",$rowConfig['content_home3']); ?>" title="" id="nut-zalo">
    <img src="/images/zalo-icon.png" alt="zalo">
</a>
<style>
#nut-zalo {
    position: fixed;
    right: 30px;
    bottom: 160px;
    z-index: 9999;
}
#nut-zalo img {
    width: 60px;
}
</style>


<style>
#tab-bottom-page {
    /*height: 50px;*/
    background: #FFE3E6;
    position: fixed;
    width: 100%;
    bottom: 0;
    left: 0;
    right: 0;
    padding: 10px;
    z-index: 999999;
}
#tab-bottom-page a {
    background: red;
    color: #fff;
    border-radius: 5px;
    padding: 10px 20px;
    display: inline-block;
    cursor: pointer;
}
#tab-bottom-page ul li {
    display: inline-block;
}
#tab-bottom-page p {
    font-weight: bold;
    margin-right: 20px;
}
#tab-bottom-page i {
    position: absolute;
    right: 10px;
    top: 10px;
    cursor: pointer;
}
</style>
<div id="tab-bottom-page" class="text-center">
    <ul>
        <li>
            <p><?= $lang=='vn' ? 'Đặt lịch tư vấn miễn phí 1:1' : 'Schedule a free 1:1 consultation' ?></p>
        </li>
        <li>
            <a data-toggle="modal" data-target="#tu-van" title=""><?= $lang=='vn' ? 'ĐĂNG KÝ NGAY' : 'REGISTER NOW' ?></a>
        </li>
    </ul>
    <i class="fa fa-close" onclick="an_box_bottom()"></i>
</div>
<script>
    function an_box_bottom () {
        document.getElementById("tab-bottom-page").style.display = 'none';
    }
</script>

<!-- Modal -->
<div id="tu-van" class="modal fade" role="dialog" style="z-index: 999999;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Bạn muốn được tư vấn du học?</h4>
        <p>Hỗ trợ làm hồ sơ miễn phí tại CNG Education</p>
      </div>
      <div class="modal-body">
        <form action="" method="post" id="form-tu-van">
          <div class="form-group">
            <label for="email">Họ và tên</label>
            <input type="text" name="name" class="form-control" id="email" required="">
          </div>
          <div class="form-group">
            <label for="email">Số điện thoại</label>
            <input type="number" name="phone" class="form-control" id="email" required="">
          </div>
          <div class="form-group">
            <label for="pwd">Email</label>
            <input type="email" name="email" class="form-control" id="pwd">
          </div>
          <div class="form-group">
            <label for="pwd">Bạn đang sống ở đâu?</label>
            <input type="text" name="noi_song" class="form-control" id="pwd">
          </div>
          <div class="form-group">
            <label for="pwd">Năm dự định du học?</label>
            <input type="text" name="nam_di" class="form-control" id="pwd">
          </div>
          <div class="form-group">
            <label for="pwd">Quốc gia bạn quan tâm du học <span style="color: red;">*</span></label>
            <div class="checkbox">
              <label><input type="checkbox" value="Anh" name="noi_di[]" class="check_box" >Anh</label> 
              <label><input type="checkbox" value="Úc" name="noi_di[]" class="check_box" >Úc</label>
              <label><input type="checkbox" value="Mỹ" name="noi_di[]" class="check_box" >Mỹ</label>
              <label><input type="checkbox" value="Canada" name="noi_di[]" class="check_box" >Canada</label>
              <label><input type="checkbox" value="Nước khác" name="noi_di[]" class="check_box" >Nước khác</label>
            </div>
            <div class="checkbox">
              
            </div>
          </div>
          <div class="form-group">
            <label for="pwd">Ý kiến của bạn (nếu có)</label>
            <input type="text" name="note" class="form-control" id="pwd">
          </div>
          <button type="submit" name="dang_ky_tu_van" class="btn btn-default" style="background: #293252;color: #fff;">Đăng ký ngay</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<script>
// this is the id of the form
$("#form-tu-van").submit(function(e) {

    e.preventDefault(); // avoid to execute the actual submit of the form.

    var form = $(this);
    var actionUrl = '/functions/ajax/form_tu_van.php';

    var selected = [];
    var di = 0;
    $('input:checked').each(function() {
        selected.push($(this).attr('name'));
        di = 1;
    });

    if (di == 1) {

    } else {
        alert('Bạn chưa chọn quốc gia.');
        throw new Error('không có quốc gia');
    }

    // alert('có quốc gia');
    
    $.ajax({
        type: "POST",
        url: actionUrl,
        data: form.serialize(), // serializes the form's elements.
        success: function(data)
        {
          alert(data); // show response from the php script.
        }
    });
    
});
</script>