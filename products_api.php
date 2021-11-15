<?php

include("connection.php");
$response = array();
$sql = "select * from products_tbl";
$result = mysqli_query($connection, $sql);
if ($result) {
	header("Content-Type: JS");
	$i = 0;
	while ($row = mysqli_fetch_assoc($result)) {
		$response[$i]['product_id'] = $row['prd_id'];
		$response[$i]['name'] = $row['prd_name'];
		$response[$i]['quantity'] = $row['prd_quantity'];
		$response[$i]['price'] = $row['prd_unitPrice'];
		$response[$i]['image'] = $row['prd_img'];
		$response[$i]['store_id'] = $row['store_id'];
		$response[$i]['description'] = $row['prd_description'];
		$i++;

	}
	//$array=json_encode($response);
	print(gettype($response[0]['image']));
	//print_r($response);
	//echo json_encode($response, JSON_PRETTY_PRINT);
	//print_r(json_encode($response, JSON_PRETTY_PRINT));
}

?>