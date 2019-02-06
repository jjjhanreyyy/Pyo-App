<?php 
date_default_timezone_set("Asia/Manila");
include 'connection.php';
if (isset($_POST['sub'])) {
	# code...
}
$sql = "INSERT INTO tbl_courses (course_code, course_description) VALUES('WTF','W T F')";
	echo $sql;
	if (mysqli_query($conn, $sql)) {
    // header('Location: successful.php');
}else{
		echo mysql_error();
    // header('Location: err.php');
		echo "FAILED".mysql_error();
};
 ?>