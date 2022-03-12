<?php
include_once 'connect.php';
session_start();

$error = '';
$mail = $_POST['U_email'];
$pass = $_POST['U_password'];

#echo "$mail"." "."$pass";

	if (empty($mail) || empty($pass)) {
		# code...
		$error = "Email or Password is not given";
	}
	else {
		$mail = $_POST['U_email'];
		$pass = $_POST['U_password'];

		$mail = stripcslashes($mail);
		$pass = stripcslashes($pass);
		include("connect.php");

		$query = "SELECT * FROM user WHERE U_Email = '$mail' && U_password = '$pass'" ;
    	$data =  mysqli_query($conn, $query);
    	$rows = mysqli_num_rows($data);
    	$result = mysqli_fetch_assoc($data);

        $query1 = "SELECT * FROM serviceprovider as s, work as w WHERE s.SP_email = w.SP_email && w.U_Email = '$mail' && w.working = 1";
        $data1 =  mysqli_query($conn, $query1);
        $rows1 = mysqli_num_rows($data1);
        $result1 = mysqli_fetch_assoc($data1);

        $query2 = "SELECT * FROM serviceprovider as s, work as w WHERE s.SP_email = w.SP_email && w.U_Email = '$mail' && w.working = 0" ;
        $data2 =  mysqli_query($conn, $query2);
        $rows2 = mysqli_num_rows($data2);
        $result2 = mysqli_fetch_assoc($data2);
    	#echo $rows;
    	if ($rows> 0) {
    		# code...
    		echo "login successful";
    		$_SESSION["email"] = $mail;
    		$_SESSION["loggedIn"] = 1;

    		$_SESSION["name"] = $result['U_Name'];
    		$_SESSION["nid"] = $result['U_NID'];
    		$_SESSION["phone"] = $result['U_Phone'];
    		$_SESSION["add"] = $result['U_Address'];
    		$_SESSION["working"] = $result1['SP_name'];
            $_SESSION["worked"] = $result2['SP_name'];

    		echo $_SESSION["email"];

    		header("Location: ../hmdb2/user_home.php?login=success");
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