<?php
include_once 'connect.php';
session_start();

$error = '';
$mail = $_POST['SP_email'];
$pass = $_POST['SP_pass'];

#echo "$mail"." "."$pass";

	if (empty($mail) || empty($pass)) {
		# code...
		$error = "Email or Password is not given";
	}
	else {
		$mail = $_POST['SP_email'];
		$pass = $_POST['SP_pass'];

		$mail = stripcslashes($mail);
		$pass = stripcslashes($pass);
		include("connect.php");

		$query = "SELECT * FROM serviceprovider WHERE SP_email = '$mail' && SP_pass = '$pass'" ;
    	$data =  mysqli_query($conn, $query);
    	$rows = mysqli_num_rows($data);
    	$result = mysqli_fetch_assoc($data);

        $query1 = "SELECT * FROM user as u, work as w WHERE u.U_Email = w.U_Email && w.SP_email = '$mail' && w.working = 1";
        $data1 =  mysqli_query($conn, $query1);
        $rows1 = mysqli_num_rows($data1);
        $result1 = mysqli_fetch_assoc($data1);

        $query2 = "SELECT * FROM user as u, work as w WHERE u.U_Email = w.U_Email && w.SP_email = '$mail' && w.working = 0" ;
        $data2 =  mysqli_query($conn, $query2);
        $rows2 = mysqli_num_rows($data2);
        $result2 = mysqli_fetch_assoc($data2);
    	#echo $rows;
    	if ($rows> 0) {
    		# code...
    		echo "login successful";
    		$_SESSION["email"] = $mail;
    		$_SESSION["loggedIn"] = 1;

    		$_SESSION["name"] = $result['SP_name'];
    		$_SESSION["nid"] = $result['SP_nid'];
    		$_SESSION["proff"] = $result['SP_work'];
    		$_SESSION["phone"] = $result['SP_phone'];
    		$_SESSION["add"] = $result['SP_address'];
    		$_SESSION["minCost"] = $result['SP_min'];
    		$_SESSION["Sworking"] = $result1['U_Name'];
    		$_SESSION["Sworked"] = $result['U_Name'];

    		header("Location: ../hmdb2/sp_home.php?login=success");
    		exit();
    	}
    	else{
    		$error = "Email or Password is Invalid";
    	}
    	mysqli_close($conn);

	}

	if (!is_null($error)) {
		# code...
		echo "$error";
	}

?>