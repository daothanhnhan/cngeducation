<?php 
    $dich_vu = $action->getList('service', 'home', '1', 'sort', 'desc', '', '8', '');
    $dich_vu_text = $action->getDetail_New('home_languages', array('page_id', 'languages_code'), array('98', $lang), 'ii');
?>
<div class="hoatdong">
    <div class="container">
        <h3>
            <?= $dich_vu_text['lang_page_name'] ?>
        </h3>
        <h4>
            <?= $dich_vu_text['lang_page_des'] ?>
        </h4>
        <div class="list-hoatdong">
            <div class="row">
                <?php 
                foreach ($dich_vu as $item) { 
                    $item_lang = $action->getDetail_New('service_languages', array('service_id', 'languages_code'), array($item['service_id'], $lang), 'ii');
                ?>
                <div class="col-md-4">
                    <div class="content">
                    <a href="/<?= $item_lang['friendly_url'] ?>"><img src="/images/<?= $item['service_img'] ?>" alt="" width="100%"></a>
                    
                        <p><?= $item_lang['lang_service_name'] ?></p>
                    </div>
                </div>
                <?php } ?>

            </div>

        </div>
    </div>
</div>