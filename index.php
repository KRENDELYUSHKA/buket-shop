<?php
session_start();
include(__DIR__ . '../pages/connect.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/style.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
    <div>
        <div class="header-user">

            <div class="header-user-logo">
                <a href="/"><img src="./img/logo.png" height="70" /></a>
            </div>
            <div class="header-user-block">
                <div class="header-user-block-icons header-user-block-icons-shop" id="open_pop_up_shop">
                    <img src="./img/shop.png" height="25" />
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
                                                <img src="<?= $item['image'] ?>" height="240" />

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
                    <a href="pages/auth.php">
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
        $query = $connect->prepare("SELECT menu FROM main");
        $query->execute();
        $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
        echo $query1[0];
        ?>
    </div>
    <?php
    $query = $connect->prepare("SELECT content FROM main");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    <?php
    $query = $connect->prepare("SELECT footer FROM main");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="./slider/script.js"></script>
    <script src="./js/shop.js"></script>
</body>
</html>