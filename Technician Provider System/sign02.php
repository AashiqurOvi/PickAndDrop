<?php
include_once 'connect.php'; 

$name = $_POST['SP_name'];
$mail = $_POST['SP_email'];
$pass = $_POST['SP_pass'];
$phone = $_POST['SP_phone'];
$nid = $_POST['SP_nid'];
$work = $_POST['SP_work'];
$add = $_POST['SP_address'];
$min = $_POST['SP_min'];
$max = $_POST['SP_max'];

if(!empty($name) & !empty($mail) & !empty($pass) & !empty($phone) & !empty($nid) & !empty($add)){
	
	$sql2 = "INSERT INTO serviceprovider(SP_name, SP_email, SP_pass, SP_phone, SP_nid, SP_address, SP_work, SP_min, SP_max) VALUES ('$name' ,'$mail' ,'$pass' ,'$phone' ,'$nid' ,'$add' ,'$work' ,'$min', '$max')";
    $data1 =  mysqli_query($conn, $sql2);
    header("Location: ../hmdb2/index.html?signup=success");

    if ($data1) {
    	echo "signup successful";
    }
}
else
{
	echo "All fields are required";
	die();
}

?>