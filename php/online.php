<?php
sleep(1);
session_start();
include "config.php";
$id = $_SESSION['unique_id'];

$sql = mysqli_query($conn, "SELECT * FROM users WHERE (unique_id != $id AND status='Online')");

$output= "";
if(mysqli_num_rows($sql) > 0){
    while($row = mysqli_fetch_assoc($sql)){
        $output .= '
        <div class="contact" info='.$row['unique_id'].' onclick="contactChat(event)" style="position:relative">
            <img src="uploads/'.$row['img'].'" alt="">
            <p>'.$row['fname'].' '.$row['lname'].'</p>
            </div>
    ';
    }
}else{
    $output = "<div style='color:red; font-size:20px'>No Contacts Found</div>";
}

echo $output;

?>