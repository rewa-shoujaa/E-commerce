<?php

include("connection.php");
	if($_POST["signupemail"] != ""){
		$email = $_POST["signupemail"];
	}else{
		die("Don't try to mess around bro 1 ;)");
	}
	
	
	if(isset($_POST["firstname"]) && $_POST["firstname"] != ""){
		$FirstName =$_POST['firstname'];
	}else{
		die("Don't try to mess around bro 2;)");
	}
	
	if(isset($_POST["lastname"]) && $_POST["lastname"] != ""){
		$LastName =$_POST['lastname'];
	}else{
		die("Don't try to mess around bro 3;)");
	}
	

	if(isset($_POST["signuppassword"]) && $_POST["signuppassword"] != ""){
		$password = hash('sha256', $_POST['signuppassword']);
	}else{
		die("Don't try to mess around bro 4;)");
	}

	
	if(isset($_POST["phonenumber"]) && $_POST["phonenumber"] != ""){
		$phonenumber = $_POST['phonenumber'];
	}else{
		die("Don't try to mess around bro 5;)");
	}
	
	if(isset($_POST["address"]) && $_POST["address"] != ""){
		$address = $_POST['address'];
	}else{
		die("Don't try to mess around bro 6;)");
	}
	
	$id=uniqid();
	$gender=$_POST['gender'];
	
	$x = $connection->prepare("select * from users_tbl where user_email=?");
	$x->bind_param("s",$email);
	$x->execute();
	$result = $x->get_result(); // get the mysqli result
	//print_r(mysqli_num_rows($result));
	//$user = $result->fetch_assoc(); // fetch data   
	if (mysqli_num_rows($result)==0){
	$x = $connection->prepare("INSERT INTO users_tbl (user_id, user_email, user_first_name, user_last_name, user_password, user_gender, user_address, user_phone_number) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
	$x->bind_param("sssssbss", $id, $email, $FirstName, $LastName, $password, $gender, $address, $phonenumber);
	$x->execute();
	$x->close();
	$connection->close();
	header("Location:login.html");
	}
	else{
		//echo '<script>alert("User already registered!")</script>';
		echo '<script type="text/javascript">'; 
		echo 'alert("User already registered!")'; 
		echo 'window.location.href = "sign_up.html";';
		echo '</script>';
		
	
		$x->close();
		$connection->close();
		//header("Location:sign_up.html");
		//echo '<script>alert("User already registered!")</script>';
		
	}
	

?>