<?php 

date_default_timezone_set("Asia/Manila");
include 'connection.php';
session_start();

if (isset($_POST['go_submit'])) {
	$course_description=ucwords(addslashes($_POST['course_description']));
	$course_code=ucwords(addslashes($_POST['course_code']));

	$sql = "INSERT INTO tbl_courses (course_description,course_code) VALUES('{$course_description}','{$course_code}')";

	if (mysqli_query($conn, $sql)) {
    header('Location: courses.php');
   
}else{
		echo mysql_error();
    // header('Location: err.php');
}
}
 ?>