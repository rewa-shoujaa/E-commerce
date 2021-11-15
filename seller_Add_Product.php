<?php
include("connection.php");

if (isset($_POST["ProductName"]) && $_POST["ProductName"] != "") {
	$productName = $_POST["ProductName"];
}
else {
	die("Don't try to mess around bro ;)");
}


if (isset($_POST["ProductQuantity"]) && $_POST["ProductQuantity"] != "") {
	$Quantity = $_POST['ProductQuantity'];
}
else {
	die("Don't try to mess around bro ;)");
}


if (isset($_POST["ProductPrice"]) && $_POST["ProductPrice"] != "") {
	$Price = $_POST['ProductPrice'];
}
else {
	die("Don't try to mess around bro ;)");
}


$CategoryChoice = array();
$ShopID = $_POST["Shop_ID"];
$ProductID = uniqid();


$uploaddir = ".\images\products\\";
$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);

move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile);

$CategoryChoice = $_POST['ProductCategory'];
//foreach ($_POST['ProductCategory'] as $category){
//array_push($CategoryChoice, $category);
//}

//print($_POST['ProductCategory']);
//print_r($CategoryChoice);
$x = $connection->prepare("INSERT INTO products_tbl (prd_ID, prd_img, prd_name, prd_quantity, prd_unitPrice, store_id) VALUES (?, ?, ?, ?, ?, ?);");
$x->bind_param("sssiis", $ProductID, $uploadfile, $productName, $Quantity, $Price, $ShopID);
$x->execute();
//$result = $x->get_result(); // get the mysqli result


$x->close();


$y = $connection->prepare("INSERT INTO products_categories_tbl (category_id, product_id) VALUES (?, ?);");
$y->bind_param("is", $CategoryChoice, $ProductID);
$y->execute();

$y->close();
header("Location:ShopView.php");

/*$Order_id = uniqid();
 $order_date = date("Y/m/d h:ma");
 $y = $connection->prepare("INSERT INTO orders_tbl (order_id, user_id, order_date) VALUES (?, ?, ?);");
 $y->bind_param("sss", $Order_id, $user_id, $order_date);
 $y->execute();
 $sql = "Select ord_detail_id from orders_products_tbl order by ord_detail_id DESC Limit 1";
 $resultid = mysqli_query($connection, $sql);
 $Last_id = mysqli_fetch_assoc($resultid)['ord_detail_id'];
 print($Last_id);
 $_SESSION["OrderID"] = $Last_id;
 $y->close();
 $connection->close();*/




//header("Location:SellerAddProducts.php");
?>




