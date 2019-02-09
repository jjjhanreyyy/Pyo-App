<?php 
date_default_timezone_set("Asia/Manila");
include 'connection.php';
session_start();
if (isset($_POST['go_submit'])) {
	echo "enter!"; 
	$fname=ucwords(addslashes($_POST['fname']));
	$mname=ucwords(addslashes($_POST['mname']));
	$lname=ucwords(addslashes($_POST['lname']));
	$address=ucwords(addslashes($_POST['address']));
	$gender=ucwords(addslashes($_POST['gender']));
	$birthdate=ucwords(addslashes($_POST['birthdate']));
	$father_name=ucwords(addslashes($_POST['fatherName']));
	$mother_name=ucwords(addslashes($_POST['motherName']));
	$student_id=ucwords(addslashes($_POST['student_id']));
	$college=ucwords(addslashes($_POST['college']));
	$course=ucwords(addslashes($_POST['course']));
	$curriculum=ucwords(addslashes($_POST['curriculum']));
	$admissionDate = date("F j, Y");
	$sql = "INSERT INTO tbl_students (fname,mname,lname,address,gender,birthdate,mother,father,college,course,curriculum,student_id,date_admitted) VALUES('{$fname}','{$mname}','{$lname}','{$address}','{$gender}','{$birthdate}','{$fatherName}','{$motherName}','{$student_id}','{$college}','{$course}','{$curriculum}','{$admissionDate}')";
	if (mysqli_query($conn, $sql)) {
    header('Location: ../students.php');
}else{
		echo mysqli_error();
    // header('Location: ../err.php');

		
}
}
echo "enter!"; 
 ?>