<link rel="stylesheet" href="/js/jquery.flipster.min.css">
<script src="/js/jquery.flipster.min.js"></script>

<div class="gb-slideshow_ruouvang">

    <div id="slide01">
        <ul class="flip-items">
            <?php
            $array = json_decode($rowConfig['slideshow_home'], true);
            foreach ($array as $key => $val) {
                $img = json_decode($val, true);
                if ($img != '') {
        ?>
            <li data-flip-title="Red">
                <a href=""><img src="/images/<?= $img['image']?>"></a>
            </li>
            <?php } } ?>
            <!-- <li data-flip-title="Razzmatazz" data-flip-category="Purples">
                <img src="/images/9521597014227.png">
             </li>
            <li data-flip-title="Deep Lilac" data-flip-category="Purples">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Daisy Bush" data-flip-category="Purples">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Cerulean Blue" data-flip-category="Blues">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Dodger Blue" data-flip-category="Blues">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Cyan" data-flip-category="Blues">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Robin's Egg" data-flip-category="Blues">
                <img src="/images/9521597014227.png">
            </li>
            <li data-flip-title="Deep Sea" data-flip-category="Greens">
                <img src="/images/9521597014227.png">
            </li> -->
            
        </ul>
    </div>

</div>

<script>
    var carousel = $("#slide01").flipster({
        style: 'carousel',
        spacing: -0.5,
        nav: false,
        buttons:   true,
    });
</script>