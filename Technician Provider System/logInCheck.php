<?php
session_start();
if (!isset($_SESSION["email"]) && !isset($_SESSION["loggedIn"])) {
	# code...
	#header("Location: login.html");
	exit();
}

?>