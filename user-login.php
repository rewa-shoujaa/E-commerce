<?php
include("connection.php");

if (isset($_POST["loginemail"]) && $_POST["loginemail"] != "") {
	$email = $_POST["loginemail"];
}
else {
	die("Don't try to mess around bro ;)");
}


if (isset($_POST["loginpassword"]) && $_POST["loginpassword"] != "") {
	$password = hash('sha256', $_POST['loginpassword']);
}
else {
	die("Don't try to mess around bro ;)");
}

print_r($email, $password);
$x = $connection->prepare("select * from users_tbl where user_email=? And user_password=?");
$x->bind_param("ss", $email, $password);
$x->execute();
$result = $x->get_result(); // get the mysqli result
print_r(mysqli_num_rows($result));
//$user = $result->fetch_assoc(); // fetch data   
if (mysqli_num_rows($result) != 0) {
	$user = $result->fetch_assoc();
	session_start();
	$_SESSION["User_id"] = $user['user_id'];
	$user_id = $user['user_id'];
	$x->close();


	$Order_id = uniqid();

	$order_date = date("Y/m/d h:ma");

	$y = $connection->prepare("INSERT INTO orders_tbl (order_id, user_id, order_date) VALUES (?, ?, ?);");
	$y->bind_param("sss", $Order_id, $user_id, $order_date);
	$y->execute();

	//$sql = "Select ord_detail_id from orders_products_tbl order by ord_detail_id DESC Limit 1";
	//$resultid = mysqli_query($connection, $sql);
	//$Last_id = mysqli_fetch_assoc($resultid)['ord_detail_id'];
	//print($Order_id);

	$_SESSION["OrderID"] = $Order_id;
	$y->close();
	$connection->close();




	header("Location:shop.php");
}
else {
	print($email);
	print($password);

	echo '<script type="text/javascript">';
	echo 'alert("Wrong username or password");';
	echo 'window.location.href = "login.html";';
	echo '</script>';

	$x->close();
	$connection->close();
//header("Location:sign_up.html");
//echo '<script>alert("User already registered!")</script>';

}



?>