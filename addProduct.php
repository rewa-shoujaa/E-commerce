<?php
include("connection.php");

	$product_ID = $_POST["productID"];
	$Quantity = $_POST["quantity"];
	$UserIF = $_POST["UserID"];
	$OrderID =$_POST["OrderID"];
	$prdQuantity =(int) $_POST["productQuantity"];

if ($_POST["productQuantity"]>$Quantity) {
	echo '<script type="text/javascript">';
	echo 'alert("Quantity not available in stock");';
	echo 'window.location.href = "Shop.php";';
	echo '</script>';
}
else {

$x = $connection->prepare("INSERT INTO orders_products_tbl (Order_id, ord_quantity, product_id) VALUES (?, ?, ?);");
$x->bind_param("sis", $OrderID,$prdQuantity,$product_ID);
$x->execute();

$newQuanity=$Quantity-$prdQuantity;
$y = $connection->prepare("UPDATE products_tbl SET prd_quantity = ? WHERE prd_id=?");
$y->bind_param("is", $newQuanity,$product_ID);
$y->execute();





$y->close();
	$x->close();
	$connection->close();
header("Location:Shop.php");

}





?>