<!DOCTYPE html>
<html>
<head>
    <title>Хит продаж</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">

    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="owlcarousel/owl.carousel.min.js"></script>
</head>
<body class="home-page">
<div class="container">
    <div class="row">
        <div class="best-seller">
            <div class="col-sm-12">
                <h2 class="style-h2-home">
                    <a href="#">Хит продаж</a>
                </h2>
                <ul class="nav nav-tabs-categories">
                    <li class="active">
                        <a data-toggle="tab" href="#home">Шпаклевки</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#menu1">Трубы</a>
                    </li>
                    <li>
                        <a data-toggle="tab" href="#menu2">Трубы</a>
                    </li>
                </ul>

                <div class="tab-content-categories">
                    <div id="home" class="tab-pane-categories fade in active">
                        <div class="owl-carousel">
                            <?php for( $i = 0; $i < 10; $i++ ){ ?>
                                <div class="product-thumb">
                                    <div class="image-product-thumb">
                                        <a href="#">
                                            <img src="http://stroytorg.dev.webpr.ua/image/cache/catalog/demo/product/apple//7/bpr-ua-image-catalog-demo-product-apple-Mac-mini-mac-mini-config-hero-201505-235x235_0.jpg" alt="Mac mini with 2.8 GHz 8 Gb" title="Mac mini with 2.8 GHz 8 Gb" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="product-id">
                                        <p>Код товара: <?php echo $i; ?></p>
                                    </div>
                                    <div class="caption">
                                        <a class="product-title" href="#">Mac mini with 2.8 GHz 8 Gb</a>
                                        <p class="product-price">32373 грн/шт</p>
                                        <div class="product-button">
                                            <div class="product-form-quantity">
                                                <i class="fa fa-minus" id="product_id_minus<?php echo $i; ?>"></i>
                                                <input type="text" class="product-form-control" id="product_id_input<?php echo $i; ?>" name="quantity" value="1">
                                                <i class="fa fa-plus" id="product_id_plus<?php echo $i; ?>"></i>
                                            </div>
                                            <button type="button" class="product-add-cart-buy">Купить<i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
                                        </div>
                                        <div class="product-button-compare-wishlist">
                                            <a href="#">Сравнить<i class="fa fa-balance-scale"></i></a>
                                            <a href="#">В избранное<i class="fa fa-heart" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="attributes">
                                            <p>Гарантия<span>12 месяцев</span></p>
                                            <p>Производитель<span>Apple</span></p>
                                            <p>Страна производитель <span>США</span></p>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div id="menu1" class="tab-pane-categories fade">
                        <div class="owl-carousel">
                            Content
                        </div>
                    </div>
                    <div id="menu2" class="tab-pane-categories fade">
                        <h3>Трубы</h3>
                        <p>Some content in menu 1.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 0,
            items: 5,
            nav: true,
            navText: ["<i class='fa fa-angle-left categories-prev'></i>", "<i class='fa fa-angle-right categories-next'></i>"]
        });
        <?php for($i = 0; $i < 10; $i++){?>
            //Input minus
            $(".product-form-quantity #product_id_minus<?php echo $i; ?>").click(function() {
                if ($(".product-form-quantity #product_id_input<?php echo $i; ?>").val() > 1) {
                    $(".product-form-quantity #product_id_input<?php echo $i; ?>").val(parseInt($(".product-form-quantity #product_id_input<?php echo $i; ?>").val()) - 1);
                }
            });
            //Input plus
            $(".product-form-quantity #product_id_plus<?php echo $i; ?>").click(function() {
                $(".product-form-quantity #product_id_input<?php echo $i; ?>").val(parseInt($(".product-form-quantity #product_id_input<?php echo $i; ?>").val()) + 1);
            });
        <?php } ?>
    });
</script>
</body>
</html>