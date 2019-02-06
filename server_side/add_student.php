<?php 
date_default_timezone_set("Asia/Manila");
include 'connection.php';
session_start();
if (isset($_POST['go_submit'])) {
	$fname=ucwords(addslashes($_POST['fname']));
	// $lname=ucwords(addslashes($_POST['lname']));
	// $mname=ucwords(addslashes($_POST['mname']));
	echo $fname."<br>";
	// echo $mname."<br>";
	// echo $lname."<br>";
	$admissionDate = date("F j, Y");
echo "nahahanap si go submit";
	$sql = "INSERT INTO tbl_students (fname,date_admitted) VALUES('{$fname}','{$admissionDate}')";
	if (mysqli_query($conn, $sql)) {
    header('Location: ../students.php');
}else{
		echo mysql_error();
    header('Location: ../students.php');
		
};
}
 ?>