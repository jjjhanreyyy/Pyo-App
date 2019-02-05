<?php 
date_default_timezone_set("Asia/Manila");
include 'connection.php';
session_start();
if (isset($_POST['submitted'])) {
	$fname=ucwords(addslashes($_POST['fname']));
	$lname=ucwords(addslashes($_POST['lname']));
	$mname=ucwords(addslashes($_POST['mname']));
	$admissionDate = date("F j, Y");

	$sql = "INSERT INTO tbl_students (fname,lname,mname,admissionDate) VALUES('{$fname}','{$lname}','{$mname}','{$admissionDate}')";
	echo $sql;
	if (mysqli_query($conn, $sql)) {
    // header('Location: successful.php');
    echo $admissionDate;
}else{
		echo mysql_error();
    // header('Location: err.php');
		
};
}
 ?>