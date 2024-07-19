<?php
session_start();
//fetch_data.php

include('connect.php');
include('funcs.php');
$text = $_SESSION['state'];
$query = "
SELECT * FROM bouqFlow WHERE status = '0' AND category='$text';
";
$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
$total_row = $statement->rowCount();
$output = '';
if ($total_row > 0) {
	foreach ($result as $row) {
		$output .= '
		<div class="products-block">
		<div class="products-block-cart">
		<img src="' . $row['image'] . '" height=" 320" width="290" />
		</div>
		<div class="products-info">
		<div class="products-info-value">
		<span>
		' . $row['price'] . ' ₽
		</span>
		<p>
		' . $row['article'] . '
		</p>
		</div>
		<div>
		

</div>
</div>
<div class="products-name">
    <span>
        ' . $row['title'] . '

    </span>

</div>
<div class="products-buy">
<a href="?cart=add&id=<?=' . $row['id'] . '?>" class="btna btna-info btna-block add-to-cart" data-id="'
. $row['id'] . '">
<input type="submit" value="Добавить в корзину" data-id="' .
			$row['id'] . '" />
</a>
</div>

</div>

';





}
} else {
$output = '<h3>Ничего не найдено</h3>';
}
echo $output;



?>

<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/main.js"></script>
<script src="../js/buy.js"></script>