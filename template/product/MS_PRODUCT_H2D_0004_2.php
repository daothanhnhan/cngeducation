<?php 

    $action_product = new action_product(); 

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';



    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);

    $row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);

    $_SESSION['productcat_id_relate'] = $row[$nameColIdProductCat_product];

    $_SESSION['sidebar'] = 'productDetail';

    $arr_id = $row['productcat_ar'];

    $arr_id = explode(',', $arr_id);

    $productcat_id = (int)$arr_id[0];

    $product_breadcrumb = $action_product->getProductCatLangDetail_byId($productcat_id, $lang);

    $breadcrumb_url = $product_breadcrumb['friendly_url'];

    $breadcrumb_name = $product_breadcrumb['lang_productcat_name'];

    $use_breadcrumb = true;



    $img_sub = json_decode($row['product_sub_img']);

    if ($row['diff_color'] != 0) {
      $list_diff_color = $action->getList('product', 'diff_color', $row['diff_color'], 'product_id', 'desc', '', '', '');
    } else {
      $list_diff_color = array();
    }

    if ($_SESSION['kho'] == 1) {
      $list_size = json_decode($row['product_size']);
    } else {
      $list_size = json_decode($row['product_sub_info1']);
    }
?>
<?php 
    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_productDetail($slug, $lang);
?>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
<input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-single-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-9 gb-single-blog_ruouvang-right">
               <!--  <div class="gb-single-blog_ruouvang-right-img">
                    <img src="/images/<?= $row['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive">
                </div> -->
                <div class="gb-single-blog_ruouvang-right-title">
                    <h2><?= $rowLang['lang_product_name'] ?></h2>
                </div>
                <p class="date" style="margin-bottom: 15px;">
                    <?= substr($row['product_created_date'], 0, 10) ?>
                </p>
                
                <div class="gb-single-blog_ruouvang-right-text">
                    <?= $rowLang['lang_product_content'] ?>
                </div>

                <div class="text-center">
                    <button type="button" id="nhan-tu-van" class="btn btn-info btn-lg" data-toggle="modal" data-target="#tu-van">NHẬN TƯ VẤN MIỄN PHÍ</button>
                </div>

                <div class="gb-single-blog_ruouvang-share">
                    <div class="row">
                        <div class="col-md-5 gb-single-blog_ruouvang-share-left">
                            <!-- <ul>
                                <li><a href="#">Finance</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Photo</a></li>
                            </ul> -->
                        </div>
                        <div class="col-md-5 col-md-offset-2 gb-single-blog_ruouvang-share-right">
                            <ul>
                                <li><span><i class="fa fa-share-alt" aria-hidden="true"></i> share</span></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                

            </div>
            <div class="col-md-3 gb-blog-left">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
            </div>
        </div>
    </div>
</div>