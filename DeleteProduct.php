<?php
include("connection.php");

if (isset($_POST["productID"]) && $_POST["productID"] != "") {
	$ProductID = $_POST["productID"];
}
else {
	die("Don't try to mess around bro ;)");
}




$x = $connection->prepare("DELETE FROM products_tbl WHERE prd_id=?;");
$x->bind_param("s", $ProductID );
$x->execute();
$result = $x->get_result(); // get the mysqli result

	$x->close();



	$y = $connection->prepare("DELETE FROM products_categories_tbl WHERE product_id=?;");
	$y->bind_param("s", $ProductID );
	$y->execute();

	



	header("Location:ShopView.php");





?>