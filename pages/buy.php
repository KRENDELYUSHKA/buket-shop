<?php
session_start();
include('connect.php');
include('funcs.php');
include('../vendor/purch.php');
if (!$_SESSION['user']) {
    header('Location: ../pages/auth.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../css/buy/style.css" />
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
    $query = $connect->prepare("SELECT menu FROM purch");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    echo $query1[0];
    ?>
    <div class="cont">

        <div class="products">
            <div class="products-el">
                <?php if (!empty($_SESSION['cart'])) { ?>
                    <?php foreach ($_SESSION['cart'] as $id => $item): ?>

                        <div class="products-block">
                            <div class="products-block-cart">
                                <img src="<?= $item['image'] ?>" height=" 220" width="190" />
                            </div>
                            <div class="products-wrap">
                                <div class="products-name">
                                    <span class="products-name-title" name="title">
                                        <?= $item['title'] ?>
                                    </span>
                                    <span class="products-name-price" name="price">
                                        <?= $item['price'] ?> ₽
                                    </span>
                                    <p class="products-name-article">
                                        <?= $item['article'] ?> ₽
                                    </p>
                                    <p class="products-name-amount" name="qty">
                                        Количество:
                                        <?= $item['qty'] ?>
                                    </p>
                                </div>
                            </div>
                        </div>

                    <?php endforeach; ?>
                <?php } else { ?>
                    <p class="cartNone">Ваша корзина пуста...</p>
                <?php }
                ; ?>
            </div>
            <div class="right-block-buy">
                <div class="card-container">
                    <div class="front">
                        <div class="image">
                            <img src="../img/chip.png" alt="">
                        </div>
                        <div class="cart-number-box">#### #### #### ####</div>
                        <div class="flexbox">
                            <div class="box">
                                <span>Держатель карты</span>
                                <div class="card-holder-name">Полное имя</div>
                            </div>
                            <div class="box">
                                <span>Срок действия</span>
                                <div class="expiration">
                                    <span class="exp-month">ММ</span>
                                    <span class="exp-year">ГГ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="back">
                        <div class="stripe"></div>
                        <div class="box">
                            <span>CVV</span>
                            <div class="cvv-box"></div>
                            <img src="img/" alt="">
                        </div>
                    </div>
                </div>
                <form action="" method="post">

                    <div class="inputBox">
                        <span>Номер карты</span>
                        <input type="text" maxlength="16" class="card-number-input" name="numCard">
                    </div>

                    <div class="inputBox">
                        <span>Держатель карты</span>
                        <input type="text" maxlength="30" class="card-holder-input" name="ownerCard">
                    </div>

                    <?php
                    $query = $connect->prepare("SELECT content FROM purch");
                    $query->execute();
                    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
                    echo $query1[0];
                    ?>
                    <div class="price-buy">

                        Сумма оплаты:
                        <?= $_SESSION['cart.sum'] ?> ₽
                    </div>
                </form>
            </div>
        </div>
        <?php
        $query = $connect->prepare("SELECT footer FROM purch");
        $query->execute();
        $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
        echo $query1[0];
        ?>





</body>
<script src="../js/card.js"></script>
<script src="../js/modal-product.js"></script>
<script src="../js/shop.js"></script>
<script src="../js/main.js"></script>
<script src="../js/buy.js"></script>
</body>

</html>