<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hmdb1";

$conn= mysqli_connect($servername, $username, $password, $dbname);

if($conn){
	echo "";
}
else {
	die("connection Problem"." ".mysqli_connect_error());
} 

?>