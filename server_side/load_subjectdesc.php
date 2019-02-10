<?php
date_default_timezone_set("Asia/Manila");
include 'connection.php';
if (isset($_POST['subject_code'])) {
$subject_code=$_POST['subject_code'];
$sql="SELECT * FROM tbl_subjects WHERE subject_code='{$subject_code}'";
$result=mysqli_query($conn, $sql);
while ($row=mysqli_fetch_array($result)) {
echo $row['subject_description'];
}
}
?>