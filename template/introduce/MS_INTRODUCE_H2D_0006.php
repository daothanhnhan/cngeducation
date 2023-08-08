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
        <h3>
            <?= $ykien_text['lang_page_name'] ?>
        </h3>
        <h4 class="other-size" style="margin: 0 auto;">
            <p>
                <?= $ykien_text['lang_page_des'] ?><br>
            </p>
        </h4>
        <div class="content_doingu">
            <div class="row">
                <?php 
                foreach ($cam_nhan as $item) { 
                    $item_lang = $action->getDetail_New('news_languages', array('news_id', 'languages_code'), array($item['news_id'], $lang), 'ii');
                ?>
                <div class="col-md-3">
                    <div class="elementor-widget-wrap hp_fix03">
                        <div class="camnhan-content"><?= $item_lang['lang_news_des'] ?></div>
                        <div class="hp_fix02"><a class="hp_fix01" href="/<?= $item_lang['friendly_url'] ?>" title=""><?= $lang=='vn' ? 'XEM THÊM' : 'SEE MORE' ?></a></div>
                        <div class="camnhan-meta camnhan-image-position-aside">
                            <div class="camnhan-image">
                                <a href="/<?= $item_lang['friendly_url'] ?>">
                                    <img width="150" height="150" src="/images/<?= $item['news_img'] ?>" class="attachment-thumbnail size-thumbnail" alt="" loading="lazy">
                                </a>
                                     </div>
                            <div class="camnhan-details">
                                <div class="camnhan-name"><?= $item_lang['lang_news_name'] ?></div>
                                <div class="camnhan-job"><?= $item_lang['lang_news_sub_info1'] ?></div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>