<?php
include('connect.php');
include('funcs.php');
session_start();

if ($_SERVER['REQUEST_URI'] == '/pages/gift-basket.php') {
    $_SESSION['state'] = 'Подарочные корзины';
} else {
    $_SESSION['state'] = '';
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/bouq-edible/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="/css/jquery-ui.css">
    <script src="/js/jquery-1.10.2.min.js"></script>
    <script src="/js/jquery-ui.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
    <div class="header-user">

        <div class="header-user-logo">
            <a href="../index.php"><img src="../img/logo.png" height="70" /></a>
        </div>
        <div class="header-user-block">
            <div class="header-user-block-icons header-user-block-icons-shop" id="open_pop_up_shop">
                <img src="../img/shop.png" height="25" />
                <p>
                    <?= $_SESSION['cart.sum'] ?> ₽
                </p>
            </div>
            <div class="pop_up_shop" id="pop_up_shop">
                <div class="pop_up_shop_container">
                    <div class="pop_up_shop_body">
                        <p class="pop_up_shop_body_p">Корзина</p>
                        <?php if (!empty($_SESSION['cart'])) { ?>
                            <div class="pop_up_shop_body_wrap">
                                <?php foreach ($_SESSION['cart'] as $id => $item): ?>
                                    <div class="pop_up_shop_body_wrap_block">
                                        <div class="pop_up_shop_body_wrap_block_cart">
                                            <img src="<?= $item['image'] ?>" height=" 240" />

                                        </div>
                                        <div class="pop_up_shop_body_wrap_block_content">
                                            <div class="pop_up_shop_body_wrap_block_content_value">
                                                <span class="pop_up_shop_body_wrap_block_content_value_price">
                                                    <?= $item['price'] ?> ₽
                                                </span>

                                            </div>
                                            <div class="pop_up_shop_body_wrap_block_content_value">
                                                <span class="pop_up_shop_body_wrap_block_content_value_article">
                                                    <?= $item['article'] ?> ₽
                                                </span>

                                            </div>
                                        </div>
                                        <div class="pop_up_shop_body_wrap_block_name">
                                            <span class="pop_up_shop_body_wrap_block_name_title">
                                                <?= $item['title'] ?>
                                            </span>
                                        </div>
                                        <div class="pop_up_shop_body_wrap_block_name">
                                            <span class="pop_up_shop_body_wrap_block_name_qty">
                                                Количество:
                                                <?= $item['qty'] ?>
                                            </span>
                                        </div>

                                    </div>
                                <?php endforeach; ?>
                            </div>

                            <div class="pop_up_shop_body_wrap_price">
                                <span>Итого:</span>
                                <img src="./products/line.png">
                                <p>
                                    <?= $_SESSION['cart.sum'] ?> ₽
                                </p>
                            </div>
                        <?php } else { ?>
                            <p class="cartNone">Ваша корзина пуста...</p>
                        <?php }
                        ; ?>
                        <div class="pop_up_shop_body_wrap_button">
                            <a href="../pages/buy.php" class="pop_up_shop_body_wrap_button_a">Оформить
                                заказ</a>
                            <a href="#" class="pop_up_shop_body_wrap_button_a" href="production.php?do=logout"
                                id="clear-cart" class="btnFooterCart">Очистить корзину</a>
                        </div>

                        <div class="pop_up_shop_close" id="pop_up_shop_close">&#10006</div>
                    </div>
                </div>
            </div>
            <div class="header-user-block-icons header-user-block-icons-auth">
                <a href="auth.php">
                    <p>
                        <? if (isset($_SESSION['user']['login_auth'])) {
                            echo $_SESSION['user']['login_auth'];
                        } else {
                            echo "Войти";
                        } ?>
                    </p>
                </a>
            </div>
        </div>
    </div>
    <?php
    $query = $connect->prepare("SELECT menu FROM basket");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    <?php
    $query = $connect->prepare("SELECT content FROM basket");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    <?php
    $query = $connect->prepare("SELECT footer FROM basket");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    
    
    <script src="../js/modal-product.js"></script>
    <script src="../js/shop.js"></script>
</body>
<script>
    $(document).ready(function () {

        filter_data();

        function filter_data() {
            $('.filter_data').html('<div id="loading" style="" ></div>');
            var action = 'fetch_data';
            var minimum_price = $('#hidden_minimum_price').val();
            var maximum_price = $('#hidden_maximum_price').val();
            var brand = get_filter('brand');
            var ram = get_filter('ram');
            var storage = get_filter('storage');
            $.ajax({
                url: "fetch_data.php",
                method: "POST",
                data: {
                    action: action,
                    minimum_price: minimum_price,
                    maximum_price: maximum_price,
                    brand: brand,
                    ram: ram,
                    storage: storage
                },
                success: function (data) {
                    $('.filter_data').html(data);
                }
            });
        }

        function get_filter(class_name) {
            var filter = [];
            $('.' + class_name + ':checked').each(function () {
                filter.push($(this).val());
            });
            return filter;
        }

        $('.common_selector').click(function () {
            filter_data();
        });

        $('#price_range').slider({
            range: true,
            min: 1000,
            max: 65000,
            values: [1000, 65000],
            step: 500,
            stop: function (event, ui) {
                $('#price_show').html(ui.values[0] + ' - ' + ui.values[1]);
                $('#hidden_minimum_price').val(ui.values[0]);
                $('#hidden_maximum_price').val(ui.values[1]);
                filter_data();
            }
        });

    });
</script>
<script src="../js/modal-product.js"></script>
<script src="../js/shop.js"></script>
<script src="/js/main.js"></script>
</body>



<style>
    .filter_data {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        width: 100%;

    }
</style>

</html>