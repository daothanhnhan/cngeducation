<?php   
    $action_service = new action_service();
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];//echo 'tuan';die;                    
        $rowCatLang = $action_service->getServiceCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_service->getServiceCatDetail_byId($rowCatLang['servicecat_id'],$lang);
        if (newsCatPageHasSub) {
            $rows = $action_service->getServiceList_byMultiLevel_orderServiceId($rowCat['servicecat_id'],'desc',$trang,15,$slug);
        } else {
            $rows = $action_service->getServiceCat_byServiceCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
        }        
    }
    else $rows = $action->getList($nameTable_news,'','',$nameColId_news,'desc',$trang,15,'tin-tuc'); 
    // var_dump($rows);die;
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-page-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <?php 
                    if ($_GET['page']=='dao-tao') { 
                        $page_daotao = $action->getDetail('page', 'page_id', 97);
                        echo $page_daotao['page_content'];
                    } ?>
                </div>
                <div class="row">
                    <?php 
                    $d = 0;
                    foreach ($rows['data'] as $item) {
                        $d++;
                        $rowLang = $action_service->getServiceLangDetail_byId($item['service_id'],$lang); 
                    ?>
                    <div class="col-sm-4">
                        <div class="gb-news-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['service_img'] ?>" alt="<?= $rowLang['lang_service_name'] ?>" class="img-responsive"></a>
                                <!-- <div class="caption caption-large">
                                    <time class="the-date"></time>
                                </div> -->
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text">
                                <div class="gb-news-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_service_name'] ?></a></h3>
                                    <p class="date">
                                        <?= substr($item['service_create_date'], 0, 10) ?>
                                    </p>

                                </div>
                                <div class="gb-news-blog_ruouvang-item-text-des">
                                    <p><?= $rowLang['lang_service_des'] ?></p>
                                </div>
                            </div>
                            <!-- <div class="gb-news-blog_ruouvang-item-button">
                                <a href="/<?= $rowLang['friendly_url'] ?>">
                                    <button type="button" class="btn gb-btn-readmore">ĐỌC TIẾP</button>
                                </a>
                            </div> -->
                        </div>
                    </div>
                    <?php 
                    if ($d%3==0) {
                        echo '<hr style="width:100%;border:0;" />';
                    }
                    } ?>
                </div>
                <div><?= $rows['paging'] ?></div>
            </div>
            <!-- <div class="col-md-4">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0009.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0008.php";?>
            </div> -->
        </div>
    </div>
</div>