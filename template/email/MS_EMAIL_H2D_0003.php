<?php 
    $action_email = new action_email();
    $action_email->lien_he1();
?>
<div class="gb-form-lienhe">
    <h3><?= $lang=='vn' ? 'Đăng ký ngay với cng education' : 'Register now with cng education' ?></h3>
    <form action="" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Họ và tên' : 'Full name' ?></label>
            <input type="text" name="name" class="form-control" required="">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control">
        </div>
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Số điện thoại' : 'Phone' ?></label>
            <input type="tel" name="phone" class="form-control" required="">
        </div>
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Nguyện vọng / mục tiêu học tập' : 'Aspirations / learning goals' ?></label>
            <textarea class="input-xlarge form-control" name="nguyen_vong" rows="6"></textarea>
        </div>
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Thông tin thêm' : 'More information' ?></label>
            <textarea class="input-xlarge form-control" name="note" rows="6"></textarea>
        </div>
        <div class="form-group">
            <label><?= $lang=='vn' ? 'Hộ chiếu' : 'Passport' ?></label>
            <input type="file" name="passport" class="form-control">
        </div>

        <button class="btn btn-gui" type="submit" name="lien_he"><?= $lang=='vn' ? 'Đăng ký ngay' : 'Register now' ?></button>
    </form>
</div>