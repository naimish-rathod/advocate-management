<?php
include 'connection.php';

extract($_GET);
$fileName = $_FILES["profile"]["name"];
$tempName = $_FILES["profile"]["tmp_name"];

$folder = "user-dp/".$fileName;

 $inTime = DateTime::createFromFormat('H:i', $availableIn);
 $outTime = DateTime::createFromFormat('H:i', $availableOut);

 $inTimeAvl = $inTime->format('h:i A');
 $outTimeAvl = $outTime->format('h:i A');
 $available = $inTimeAvl." To ".$outTimeAvl;
 
$stmt = $conn->prepare("INSERT INTO `temp_user`(`pwd`, `name`, `edu`, `exp`, `work`, `available`, `user_img_src`) VALUES (?,?,?,?,?,?,?)");
$stmt->bind_param("sssssss", $pwd, $name, $edu, $exp, $work, $available, $folder );
$stmt->execute();

if($stmt ){
	 header("location: register-user.php");
}
if ($_FILES["profile"]["error"] === UPLOAD_ERR_OK) {
	    if (move_uploaded_file($tempName, $folder)) {
	         
	    } else {
	         
	    }
	} else {
	    echo "Error uploading file: " . $_FILES["profile"]["error"];
	}

?>
