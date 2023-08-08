<?php 
    $doi_tac = $action->getList('doi_tac', '', '', 'id', 'asc', '', '', '');
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<link rel="stylesheet" href="/plugin/animsition/css/animate.css">

<div class="doitac">

    <div class="doitac-slide owl-carousel owl-theme">

        <?php foreach ($doi_tac as $item) { ?>
        <div class="item">

            <img src="/images/<?= $item['image'] ?>" alt="slideshow" class="img-responsive">

        </div>
        <?php } ?>
        


    </div>

</div>



<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>

    $(document).ready(function (){

        $('.doitac-slide').owlCarousel({

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
                    items:5,
                    nav:false

                }

            }

        });

    });

</script>