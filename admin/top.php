<?php
include('../pages/connect.php');
if(isset($_POST['zHeader'])){
    $query=$connect->prepare("SELECT menu FROM topper");
    $query->execute();
    $query1=$query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description1=$query1[0];
}
if(isset($_POST['oHeader'])){
    $newContent=$_POST['tableHeader'];
    $query=$connect->prepare("UPDATE topper SET menu = :new WHERE id='1'");
    $query->bindvalue(':new',$newContent);
    if($query->execute()>0){
        echo 'Данные обновлены';
    }
    else{
        echo 'Неверные данные';
    }
}
if(isset($_POST['zContent'])){
    $query=$connect->prepare("SELECT content FROM topper");
    $query->execute();
    $query1=$query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description2=$query1[0];
}
if(isset($_POST['oContent'])){
    $newContent=$_POST['tableContent'];
    $query=$connect->prepare("UPDATE topper SET content = :new WHERE id='1'");
    $query->bindvalue(':new',$newContent);
    if($query->execute()>0){
        echo 'Данные обновлены';
    }
    else{
        echo 'Неверные данные';
    }
}
if(isset($_POST['zFooter'])){
    $query=$connect->prepare("SELECT footer FROM topper");
    $query->execute();
    $query1=$query->fetchAll(PDO::FETCH_COLUMN, 0);
    $description3=$query1[0];
}
if(isset($_POST['oFooter'])){
    $newContent=$_POST['tableContent'];
    $query=$connect->prepare("UPDATE topper SET footer = :new WHERE id='1'");
    $query->bindvalue(':new',$newContent);
    if($query->execute()>0){
        echo 'Данные обновлены';
    }
    else{
        echo 'Неверные данные';
    }
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
</body>
</body>
<style>
    .content{
        font-family: 'Montserrat';
    }
</style>
</html>