<?php
$conn = mysqli_connect("localhost","root","","chatapp");
if(!$conn){
    die("Couldn't connect to the database...");
}