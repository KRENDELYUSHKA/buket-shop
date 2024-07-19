<?php
function debug(array $data): void
{
	echo '<pre>' . print_r($data, 1) . '</pre>';
}

function get_product(int $id)
{
	global $connect;
	$stmt = $connect->prepare("SELECT * FROM bouqFlow WHERE id = ?");
	$stmt->execute([$id]);
	return $stmt->fetch();
}

function add_to_cart($product): void
{

	if (isset($_SESSION['cart'][$product['id']])) {
		$_SESSION['cart'][$product['id']]['qty'] += 1;
	} else {
		$_SESSION['cart'][$product['id']] = [
			'image' => $product['image'],
			'title' => $product['title'],
			'price' => $product['price'],
			'article' => $product['article'],
			'qty' => 1,
		];
	}

	$_SESSION['cart.qty'] = !empty($_SESSION['cart.qty']) ? ++$_SESSION['cart.qty'] : 1;
	$_SESSION['cart.sum'] = !empty($_SESSION['cart.sum']) ? $_SESSION['cart.sum'] + $product['price'] : $product['price'];

}


?>