<?php
include_once 'connect.php'; 

$name = $_POST['U_name'];
$mail = $_POST['U_email'];
$pass = $_POST['U_password'];
$phone = $_POST['U_phone'];
$nid = $_POST['U_nid'];
$add = $_POST['U_address'];

if(!empty($name) & !empty($mail) & !empty($pass) & !empty($phone) & !empty($nid) & !empty($add)){
	
	$sql = "INSERT INTO user(U_Name, U_Email, U_password, U_Phone, U_NID, U_Address) VALUES ('$name', '$mail','$pass' ,'$phone' ,'$nid' ,'$add')";
    $data =  mysqli_query($conn, $sql);
    header("Location: ../hmdb2/index.html?signup=success");

    if ($data) {
    	echo "signup successful";
    }
}
else
{
	echo "All fields are required";
	die();
}

?>