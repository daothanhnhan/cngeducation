<?php 
     $action_page = new action_page(); 
    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';

    $rowLang = $action_page->getPageLangDetail_byUrl($slug,$lang);
    $row = $action_page->getPageDetail_byId($rowLang['page_id'],$lang);
    $_SESSION['sidebar'] = 'pageDetail';

    $action_lang = new action_lang();
    $url_lang = $action_lang->get_url_lang_page($slug, $lang);
?>
<input type="hidden" name="lang_current" id="lang_current" value="<?php echo $lang;?>">
            <input type="hidden" name="url_lang" value="<?php echo $url_lang;?>" id="url_lang">
<style>
.gb-page-gioithieu-right table td {
    border: 1px solid black;
}
.gb-page-gioithieu-right ul, .gb-page-gioithieu-right ol {
    list-style: revert;
    margin-left: 20px;
}
.gb-page-gioithieu .gb-page-gioithieu-right {
    text-align: justify;
}
</style>
<div class="gb-page-gioithieu">
    <?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
    <div class="container">
        <div class="gb-page-gioithieu-right">
            <?= $rowLang['lang_page_content'] ?>
        </div>
        <div class="text-center">
                    <button type="button" id="nhan-tu-van" class="btn btn-info btn-lg" data-toggle="modal" data-target="#tu-van">NHẬN TƯ VẤN MIỄN PHÍ</button>
                </div>
    </div>
</div>