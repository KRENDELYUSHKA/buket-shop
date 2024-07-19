<?php
session_start();
require_once '../pages/connect.php';
//
if (!empty($_POST) && isset($_POST['login'])) {

    $loginReg = $_POST['login_reg'];
    $passReg = $_POST['pass_reg'];
    $phoneReg = $_POST['phone_reg'];
    $passConf=$_POST['passconf_reg'];
    global $connect;
    $stmt = $connect->prepare("SELECT * FROM `users` WHERE `login` = '$loginReg'");
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        header('Location: ../pages/register.php');
        $_SESSION['message_closed'] = 'Логин занят';
    } else  if($stmt->rowCount() == 0 && $loginReg!=="" && $phoneReg!=="" && $passReg===$passConf && $passReg!==""){
        $passReg = md5($passReg);
        $stmt = $connect->prepare("INSERT INTO `users` (`id`, `login`, `pass`, `phone`,`status`) VALUES (NULL, '$loginReg', '$passReg', '$phoneReg','0')");
        if ($stmt->execute() > 0) {
            header('Location: ../pages/auth.php');
        }
    }
    else{
        header('Location: ../pages/register.php');
    }
}
?>