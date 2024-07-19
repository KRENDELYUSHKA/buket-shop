<?php
session_start();
require_once '../pages/connect.php';
if (isset($_POST['login'])) {
    $login = $_POST['login_auth'];
    $pass = md5($_POST['pass_auth']);
    global $connect;
    $query = $connect->prepare("SELECT * FROM `users` WHERE `login` = '$login' AND `pass` = '$pass' AND `status`='0'");
    $queryAd = $connect->prepare("SELECT * FROM `users` WHERE `login` = '$login' AND `pass` = '$pass' AND `status`='1'");
    $query->execute();
    $queryAd->execute();
    if ($query->rowCount() > 0) {
        $_SESSION['user'] = [
            "login_auth" => $login,
        ];
        header('Location: ../pages/auth.php');
        $_SESSION['message_open'] = 'Авторизация пройдена';
    } 
    else if ($queryAd->rowCount() > 0) {
        $_SESSION['admin'] = [
            "login_auth" => $login,
        ];
        header('Location: ../admin/main.php');
    }else {
        $_SESSION['message_closed'] = 'Ошибка';
        header('Location: ../pages/auth.php');
    }
}

?>