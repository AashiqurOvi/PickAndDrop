<?php
include("connect.php");
session_start();

$query = "UPDATE work SET working=0 WHERE  U_Email = '$_SESSION['email']', SP_email = '$_SESSION['working_email']'" ;
$data =  mysqli_query($conn, $query);
$rows = mysqli_num_rows($data);
$result = mysqli_fetch_assoc($data);

header("Location: ../hmdb2/user_profile.php?dismiss=success");

?>