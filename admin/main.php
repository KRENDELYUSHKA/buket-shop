<?php
session_start();
include('../pages/connect.php');
if (!$_SESSION['admin']) {
    header('Location: ../pages/auth.php');
}
if (isset($_POST['zHeader'])) {
    $query = $connect->prepare("SELECT menu FROM main");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description1 = $query1[0];
}
if (isset($_POST['oHeader'])) {
    $newContent = $_POST['tableHeader'];
    $query = $connect->prepare("UPDATE main SET menu = :new WHERE id='1'");
    $query->bindvalue(':new', $newContent);
    if ($query->execute() > 0) {
        echo 'Данные обновлены';
    } else {
        echo 'Неверные данные';
    }
}
if (isset($_POST['zContent'])) {
    $query = $connect->prepare("SELECT content FROM main");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description2 = $query1[0];
}
if (isset($_POST['oContent'])) {
    $newContent = $_POST['tableContent'];
    $query = $connect->prepare("UPDATE main SET content = :new WHERE id='1'");
    $query->bindvalue(':new', $newContent);
    if ($query->execute() > 0) {
        echo 'Данные обновлены';
    } else {
        echo 'Неверные данные';
    }
}
if (isset($_POST['zFooter'])) {
    $query = $connect->prepare("SELECT footer FROM main");
    $query->execute();
    $query1 = $query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description3 = $query1[0];
}
if (isset($_POST['oFooter'])) {
    $newContent = $_POST['tableContent'];
    $query = $connect->prepare("UPDATE main SET footer = :new WHERE id='1'");
    $query->bindvalue(':new', $newContent);
    if ($query->execute() > 0) {
        echo 'Данные обновлены';
    } else {
        echo 'Неверные данные';
    }
}
if (!empty($_POST) && isset($_POST['insert'])) {
    $login = $_POST['login'];
    $pass = $_POST['pass'];
    $phone = $_POST['phone'];
    $status= $_POST['status'];
    global $connect;
    $stmt = $connect->prepare("SELECT * FROM `users` WHERE `login` = '$login'");
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        header('Location: main.php');
        $_SESSION['message_closed'] = 'Логин занят';
    } else  if($stmt->rowCount() == 0 && $login!=="" && $pass!=="" && $phone!=="" && $status!==""){
        $passReg = md5($passReg);
        $stmt = $connect->prepare("INSERT INTO `users` (`id`, `login`, `pass`, `phone`,`status`) VALUES (NULL, '$login', '$pass', '$phone','$status')");
        if ($stmt->execute() > 0) {
            header('Location: main.php');
            $_SESSION['message_closed'] = 'Успешно добавлено';
        }
    }
    else{
        header('Location: main.php');
        $_SESSION['message_closed'] = 'Ошибка';
    }
}

if (isset($_GET['delete'])) {
    $loginDel=$_GET['loginDel'];
    $stmt = $connect->prepare("DELETE FROM `users` WHERE `login`=:login");
    $stmt->bindvalue(':login',$loginDel);
    $stmt->execute();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap" rel="stylesheet" />
    <title>Document</title>
</head>

<body>
    <div class="header-menu">
        <li class="header-menu-list"><a href="main.php" class="header-menu-link">Главная</a>
        </li>
        <li class="header-menu-list"><a href="bouqFlow.php" class="header-menu-link">Букеты цветов</a>
        </li>
        <li class="header-menu-list"><a href="bouqEdible.php" class="header-menu-link">Съедобные
                букеты</a></li>
        <li class="header-menu-list"><a href="giftBasket.php" class="header-menu-link">Подарочные
                корзины</a></li>
        <li class="header-menu-list"><a href="top.php" class="header-menu-link">Топперы</a></li>
        <li class="header-menu-list"><a href="deliv.php" class="header-menu-link">Доставка</a></li>
    </div>
    <div class="content">
        <form method="POST">
            <a href="../vendor/logout.php">Выход</a>
            <div>
                <span>Header</span>
                <input type="submit" value="Загрузить" name="zHeader">
                <input type="submit" value="Обновить" name="oHeader">
                <textarea name="tableHeader" id="z" type="text"><?= $description1; ?></textarea>
            </div>
            <div>
                <span>Content</span>
                <input type="submit" value="Загрузить" name="zContent">
                <input type="submit" value="Обновить" name="oContent">
                <textarea name="tableContent" id="z" type="text"><?= $description2; ?></textarea>
            </div>
            <div>
                <span>Footer</span>
                <input type="submit" value="Загрузить" name="zFooter">
                <input type="submit" value="Обновить" name="oFooter">
                <textarea name="tableFooter" id="z" type="text"><?= $description3; ?></textarea>
            </div>
        </form>
    </div>
    <div class="user">
        <div>
            <form method="POST">
                <span>Добавить пользователя</span>
                <textarea name="login" type="text"></textarea>
                <textarea name="pass" type="text"></textarea>
                <textarea name="phone" type="text"></textarea>
                <textarea name="status" type="text"></textarea>
                <input type="submit" name="insert" value="Добавить">
            </form>
        </div>
        <div>
            <form method="GET">
                <span>Удалить пользователя</span>
                <textarea name="loginDel" type="text"></textarea>
                <input type="submit" name="delete" value="Удалить">
            </form>
        </div>
    </div>
</body>
</body>
<style>
    * {
        font-family: 'Montserrat';
    }

    .user {
        margin: 20px 0px;
    }
</style>

</html>