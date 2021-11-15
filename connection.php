<?php 

$server = "localhost";
$username = "root";
$password = "";
$dbname = "ecommerce_db";

$connection = new mysqli($server, $username, $password, $dbname);

if($connection->connect_error){
	die("Failed");
}

?>