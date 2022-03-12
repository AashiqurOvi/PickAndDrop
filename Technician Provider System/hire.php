<?php
include("connect.php");
session_start();


$U_Email= $_SESSION['email']
$query = "INSERT INTO work(U_Email, SP_email, working) VALUES ('$U_Email','','2'" ;
$data =  mysqli_query($conn, $query);
#$rows = mysqli_num_rows($data);
#$result = mysqli_fetch_assoc($data);

header("Location: ../hmdb2/services.php?dismiss=success");

?>