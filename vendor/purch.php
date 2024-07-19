<?php
session_start();
require_once '../pages/connect.php';
if (!empty($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $id => $item):
        $itogo .= 'Название: ' . $item['title'] .
            ' Количество: ' . $item['qty'] .
            ' Цена: ' . $item['price'] . '
            ';

    endforeach;
}
if (isset($_POST['buy'])) {
    $numCard = $_POST['numCard'];
    $ownerCard = $_POST['ownerCard'];
    $month = $_POST['month'];
    $year = $_POST['year'];
    $cvv = $_POST['cvv'];
    global $connect;
    $stmt = $connect->prepare("INSERT INTO `buy` (`login`, `title`, `numCard`, `ownerCard`, `month`, `year`, `cvv`)
    VALUES (:login, :title, :numCard, :ownerCard, :month, :year, :cvv)");
    $stmt->bindvalue(':login', $_SESSION['user']['login_auth']);
    $stmt->bindvalue(':title', $itogo);
    $stmt->bindvalue(':numCard', $numCard);
    $stmt->bindvalue(':ownerCard', $ownerCard);
    $stmt->bindvalue(':month', $month);
    $stmt->bindvalue(':year', $year);
    $stmt->bindvalue(':cvv', $cvv);
    if ($stmt->execute() > 0) {
        echo "<script>alert('Покупка успешно совершена');</script>";
    } else {
        echo "<script>alert('Данные введены не верно, повторите попытку');</script>";
    }

}
?>