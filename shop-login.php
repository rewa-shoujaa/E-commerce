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

$x = $connection->prepare("select * from stores_db where str_email=? And str_password=?");
$x->bind_param("ss", $email, $password);
$x->execute();
$result = $x->get_result(); // get the mysqli result
//print_r(mysqli_num_rows($result));
//$user = $result->fetch_assoc(); // fetch data   
if (mysqli_num_rows($result) != 0) {
	$user = $result->fetch_assoc();
	session_start();
	$_SESSION["Shop_id"] = $user['str_id'];
	$_SESSION["Shop_Name"] = $user['str_name'];


	$x->close();
	$connection->close();
	header("Location:ShopView.php");
}
else {
	//echo '<script>alert("User already registered!")</script>';
	echo '<script type="text/javascript">';
	echo 'alert("Wrong username or password");';
	echo 'window.location.href = "loginShop.html";';
	echo '</script>';

	$x->close();
	$connection->close();
//header("Location:sign_up.html");
//echo '<script>alert("User already registered!")</script>';

}



?>