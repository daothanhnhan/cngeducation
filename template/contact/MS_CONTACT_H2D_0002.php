<div class="gb-gioithieu-company">
    <h2><?=$rowConfig_lang['lang_web_name']?></h2>
    <div class="gb-dress-intro">
        <ul>
            <li>
                <div class="icons">
                    <i class="fa fa-map-signs" aria-hidden="true"></i>
                </div>
                <p><strong></strong> <?= $rowConfig_lang['lang_content_home1'] ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-mobile" aria-hidden="true"></i>
                </div>
                <p><strong></strong> <?= $rowConfig['content_home3'] ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                </div>
                <p><strong></strong> <?= $rowConfig['content_home2'] ?></p>
            </li>
        </ul>
    </div>
    <?php include DIR_SOCIAL."MS_SOCIAL_H2D_0002.php";?>
    <div class="gb-support-intro">
        <ul>
            <li>
                <div class="icons">
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </div>
                <p><?= $lang=='vn' ? 'Tư Vấn 24/7' : '24/7 Consultation' ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </div>
                <p><?= $lang=='vn' ? 'Hỗ Trợ Nhiệt Tình' : 'Enthusiastic support' ?></p>
            </li>
            <li>
                <div class="icons">
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </div>
                <p><?= $lang=='vn' ? 'Cung Cấp Thông Tin Chính Xác' : 'Provide Accurate Information' ?></p>
            </li>
        </ul>
    </div>
</div>