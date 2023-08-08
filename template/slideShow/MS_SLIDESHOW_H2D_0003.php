<?php 
    $slideshow = $action->getList('slideshow', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="/js/jquery.flipster.min.css">
<script src="/js/jquery.flipster.min.js"></script>

<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="/plugin/animsition/css/animate.css">

<div class="gb-slideshow_ruouvang">

    <div id="slide01">
        <ul class="flip-items slideshow-slide owl-carousel owl-theme">
            <?php
            foreach ($slideshow as $item) { 
        ?>
            <div class="item">
                <a href="<?= $item['link'] ?>" title="">
                    <img src="/images/<?= $item['image'] ?>" alt="slideshow" class="img-responsive">
                </a>
                

            </div>
            <?php }  ?>
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

<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>

    $(document).ready(function (){

        $('.slideshow-slide').owlCarousel({

            loop:true,

            margin:30,

            navSpeed:500,

            nav:false,

            dots: false,

            autoplay: true,

            rewind: true,

            navText:[],

            items:1,

            responsive:{

                0:{
                    items:1,
                    nav:false

                },

                767:{
                    items:1,
                    nav:false

                }

            }

        });

    });

</script>