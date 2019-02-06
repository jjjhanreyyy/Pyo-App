<?php 
date_default_timezone_set("Asia/Manila");
include 'connection.php';
session_start();
if (isset($_POST['go_submit'])) {
	$subject_description=ucwords(addslashes($_POST['subject_description']));
	$subject_code=ucwords(addslashes($_POST['subject_code']));

	$sql = "INSERT INTO tbl_subjects (subject_description,subject_code) VALUES('{$subject_description}','{$subject_code}')";

	if (mysqli_query($conn, $sql)) {
    header('Location: ../subjects.php');
   
}else{
		echo mysql_error();
    // header('Location: err.php');
}
} else
echo "fao";
 ?>