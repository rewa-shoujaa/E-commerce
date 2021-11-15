<?php

include("connection.php");
	//if(isset($_POST["signupemail"]) && $_POST["signupemail"] != ""){
		$email = $_POST["signupemail"];
	//}else{
		//die("Don't try to mess around bro ;)");
	//}
	
	
	if(isset($_POST["shopname"]) && $_POST["shopname"] != ""){
		$ShopName =$_POST['shopname'];
	}else{
		die("Don't try to mess around bro ;)");
	}
	

	if(isset($_POST["signuppassword"]) && $_POST["signuppassword"] != ""){
		$password = hash('sha256', $_POST['signuppassword']);
	}else{
		die("Don't try to mess around bro ;)");
	}

	
	if(isset($_POST["phonenumber"]) && $_POST["phonenumber"] != ""){
		$phonenumber = $_POST['phonenumber'];
	}else{
		die("Don't try to mess around bro ;)");
	}
	
	if(isset($_POST["address"]) && $_POST["address"] != ""){
		$address = $_POST['address'];
	}else{
		die("Don't try to mess around bro ;)");
	}
	
	$id=uniqid();
	
	$x = $connection->prepare("select * from users_tbl where user_email=?");
	$x->bind_param("s",$email);
	$x->execute();
	$result = $x->get_result(); // get the mysqli result
	//print_r(mysqli_num_rows($result));
	//$user = $result->fetch_assoc(); // fetch data   
	if (mysqli_num_rows($result)==0){
	$x = $connection->prepare("INSERT INTO stores_db (str_id, str_email, str_name, str_password, str_address, str_phone_number) VALUES (?, ?, ?, ?, ?, ?)");
	$x->bind_param("ssssss", $id, $email, $ShopName, $password, $address, $phonenumber);
	$x->execute();
	$x->close();
	$connection->close();
	header("Location:index.html");
	}
	else{
		//echo '<script>alert("User already registered!")</script>';
		//echo '<script type="text/javascript">'; 
		//echo 'alert("User already registered!");'; 
		//echo 'window.location.href = "sign_up.html";';
		//echo '</script>';
		
		
		echo 'User name already registered!';
		$x->close();
		$connection->close();
		//header("Location:sign_up.html");
		//echo '<script>alert("User already registered!")</script>';
		
	}
	

?>