<?php
require_once 'connection.php';//include the connection file

$DrugID=isset($_POST['DrugID'])?$_POST['DrugID']:"";
$Name=isset($_POST['Name'])?$_POST['Name']:"";
$Interactions=isset($_POST['Interactions'])?$_POST['Interactions']:"";

$SQL = "INSERT INTO Medicine(drugID,Name,Interactions) VALUES(";
$SQL.="'".$DrugID."', '".$Name."', '".$Interactions."')";
$result = mysqli_query($connection,$SQL);

if (!$result) //if the query fails
    die("Database access failed: " . mysqli_error($connection));

//otherwise
echo "a new drug has been added successfully";

?>