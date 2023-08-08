<?php 
    $tai_sao_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('55', $lang), 'ii');
    $tai_sao = $action->getDetail('home', 'page_id', '55');
    // $su_menh = $action->getDetail('home', 'page_id', '56');
    // $tam_nhin = $action->getDetail('home', 'page_id', '57');
    // $muc_tieu = $action->getDetail('home', 'page_id', '58');
    // $gia_tri = $action->getDetail('home', 'page_id', '59');

    // $su_menh_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('56', $lang), 'ii');//var_dump($su_menh_lang);
    // $tam_nhin_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('57', $lang), 'ii');
    // $muc_tieu_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('58', $lang), 'ii');
    // $gia_tri_lang = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('59', $lang), 'ii');
?>
<div class="gb-introvechungtoi_ruouvang">
    <div class="container other-size">
        <h3 class="elementor-heading-titl"><?= $tai_sao_lang['lang_page_name'] ?></h3>
        <!-- <div class="gb-divider"></div> -->
        <div class="row">
            <div class="col-md-12">
                <div class="elementor-text-editor elementor-clearfix">
                    <?= $tai_sao_lang['lang_page_content'] ?>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-md-3">
            <div class="elementor-widget-container">
                <div class="elementor-image-box-wrapper">
                    <figure class="elementor-image-box-img">
                        <img width="300" height="200" src="/images/<?= $tai_sao['page_img_1'] ?>" class="elementor-animation-grow attachment-medium size-medium" alt="">
                    </figure>
                    <div class="elementor-image-box-content">
                        <h3 class="elementor-image-box-title"><?= $tai_sao_lang['lang_page_sub_info1'] ?></h3>
                        <p class="elementor-image-box-description"><?= $tai_sao_lang['lang_page_sub_info2'] ?></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="elementor-image-box-wrapper">
                <figure class="elementor-image-box-img"><img width="300" height="200" src="/images/<?= $tai_sao['page_img_2'] ?>" class="elementor-animation-grow attachment-medium size-medium" alt=""></figure>
                <div class="elementor-image-box-content">
                    <h3 class="elementor-image-box-title"><?= $tai_sao_lang['lang_page_sub_info3'] ?></h3>
                    <p class="elementor-image-box-description"><?= $tai_sao_lang['lang_page_sub_info4'] ?></p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="elementor-widget-container">
                <div class="elementor-image-box-wrapper">
                    <figure class="elementor-image-box-img"><img width="300" height="200" src="/images/<?= $tai_sao['page_img_3'] ?>" class="elementor-animation-grow attachment-medium size-medium" alt="" loading="lazy"></figure>
                    <div class="elementor-image-box-content">
                        <h3 class="elementor-image-box-title"><?= $tai_sao_lang['lang_page_sub_info5'] ?></h3>
                        <p class="elementor-image-box-description"><?= $tai_sao_lang['lang_page_sub_info6'] ?></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="elementor-image-box-wrapper">
                <figure class="elementor-image-box-img"><img width="300" height="200" src="/images/<?= $tai_sao['page_img_4'] ?>" class="elementor-animation-grow attachment-medium size-medium" alt=""></figure>
                <div class="elementor-image-box-content">
                    <h3 class="elementor-image-box-title"><?= $tai_sao_lang['lang_page_sub_info7'] ?></h3>
                    <p class="elementor-image-box-description"><?= $tai_sao_lang['lang_page_sub_info8'] ?></p>
                </div>
            </div>
        </div>
    </div>
</div>