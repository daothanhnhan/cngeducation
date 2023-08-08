<?php 
    $cam_nang = $action->getList('news', 'newscat_id', '4', 'news_id', 'desc', '', '8', '');
?>
<div class="doingu">
    <div class="container">
        <h3>
            CẨM NANG DU HỌC HÀN QUỐC
        </h3>
        <div class="content_doingu">
            <div class="row">
                <div class="grid_content">
                    <?php foreach ($cam_nang as $item) { ?>
                    <div class="box-1">
                        <div class="grid-box">
                            <a href="/<?= $item['friendly_url'] ?>" class="aimg">
                                <img src="/images/<?= $item['news_img'] ?>" alt="" width="100%">
                            </a>
                            <div class="grid__text">
                                <h5 class="grid__title">
                                    <a href="/<?= $item['friendly_url'] ?>">
                                        <?= $item['news_name'] ?> </a>
                                </h5>
                                <div class="grid__excerpt">
                                    <p><?= $item['news_des'] ?></p>
                                </div>
                            </div>
                            <div class="grid__meta-data">
                                <span class="grid-date">
                                    <?= date('d/m/Y', strtotime($item['news_created_date'])) ?> </span>
                                <span class="grid-avatar">
                                    No Comments </span>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>