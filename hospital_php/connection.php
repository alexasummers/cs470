<?php 


  $db_hostname = 'localhost';
  $db_database = "test";
  $db_username = "root";
  $db_password = "";
  

 $connection = mysqli_connect($db_hostname, $db_username,$db_password,$db_database);
 
 if (!$connection)
    die("Unable to connect to MySQL: " . mysqli_connect_errno());


?>

