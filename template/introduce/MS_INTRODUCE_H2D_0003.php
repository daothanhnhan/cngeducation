<?php 
    $nguoi_1 = $action->getDetail('home', 'page_id', 60);
    $nguoi_2 = $action->getDetail('home', 'page_id', 61);
    $nguoi_3 = $action->getDetail('home', 'page_id', 62);

    $nguoi_1_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('60', $lang), 'ii');
    $nguoi_2_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('61', $lang), 'ii');
    $nguoi_3_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('62', $lang), 'ii');

    // $cam_nhan = $action->getList('cam_nhan', '', '', 'id', 'asc', '', '4', '');
    $cam_nhan = $action->getList('news', 'newscat_id', '13', 'news_id', 'desc', '', '4', '');//var_dump($cam_nhan);

    $lanh_dao_text = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('99', $lang), 'ii');

    $ykien_text = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('100', $lang), 'ii');

    $hi = $action->getDetail('home', 'page_id', 101);
    $hi_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('101', $lang), 'ii');
?>
<style>
.lanh-dao {
    margin-top: 20px;
}
.lanh-dao .title {
    font-size: 30px;
    /*font-weight: bold;*/
    margin-bottom: 20px;
}
</style>
<div class="doingu">
    <div class="container">
        <!-- <h3>
            <?= $lanh_dao_text['lang_page_name'] ?>
        </h3>
        <h4>
            <span><?= $lanh_dao_text['lang_page_des'] ?></span>
            <p>
                <span> <?= $rowConfig_lang['lang_web_name'] ?> </span><br>
                Phone: <?= $rowConfig['content_home3'] ?> <br>
                Email: <?= $rowConfig['content_home2'] ?>
            </p>
        </h4> -->
        <div class="content_doingu hidden">
            <div class="row">
                <div class="col-md-6">
                    <div class="box_doingu">
                        <div class="block_doingu">
                            <div class="img_doingu">
                                <img src="/images/<?= $nguoi_1['page_img'] ?>" alt="" width="100%">
                            </div>
                            <div class="text_doingu">
                                <div class="elementor-image-box-content">
                                    <h3 class="elementor-image-box-title">
                                        <h5><?= $nguoi_1_lang['lang_page_des'] ?> </h5>
                                        <h3 class="name_doingu"><?= $nguoi_1_lang['lang_page_name'] ?></h3>
                                        <p>
                                            <?= str_replace("\r\n", "<br>", $nguoi_1_lang['lang_page_sub_info1']) ?>
                                        </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="box_doingu">
                        <div class="block_doingu" style="flex-wrap: wrap;">
                            <div class="img_doingu" style="margin-bottom: 15px;">
                                <img src="/images/<?= $nguoi_2['page_img'] ?>" alt="" width="100%">
                            </div>
                            <div class="text_doingu">
                                <div class="elementor-image-box-content">
                                    <h3 class="elementor-image-box-title">
                                        <h5><?= $nguoi_2_lang['lang_page_des'] ?> </h5>
                                        <h3 class="name_doingu"><?= $nguoi_2_lang['lang_page_name'] ?></h3>
                                        <p>
                                            <?= str_replace("\r\n", "<br>", $nguoi_2_lang['lang_page_sub_info1']) ?>
                                        </p>
                                </div>
                            </div>
                            <div class="img_doingu">
                                <img src="/images/<?= $nguoi_3['page_img'] ?>" alt="" width="100%">
                            </div>
                            <div class="text_doingu">
                                <div class="elementor-image-box-content">
                                    <h3 class="elementor-image-box-title">
                                        <h5><?= $nguoi_3_lang['lang_page_des'] ?> </h5>
                                        <h3 class="name_doingu"><?= $nguoi_3_lang['lang_page_name'] ?></h3>
                                        <p>
                                            <?= str_replace("\r\n", "<br>", $nguoi_3_lang['lang_page_sub_info1']) ?>
                                        </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="lanh-dao">
            <div class="col-md-5">
                <img src="/images/<?= $hi['page_img'] ?>" alt="lãnh đạo" style="width: 100%;">
            </div>
            <div class="col-md-7 text-left">
                <p class="title"><?= $hi_lang['lang_page_name'] ?></p>
                <p><?= $hi_lang['lang_page_des'] ?></p>
            </div>
        </div>
    </div>
</div>
