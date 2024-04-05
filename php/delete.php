<?php
include "config.php";

$userId = mysqli_real_escape_string($conn, $_POST['userId']);
$msgId = mysqli_real_escape_string($conn, $_POST['msgId']);
$sql = mysqli_query($conn, "DELETE FROM messages WHERE id = $msgId LIMIT 1");
if($sql){
    echo "message deleted";
}else{
    echo "An error occurred while deleting message";
}


?>