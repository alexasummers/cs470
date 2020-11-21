<?php
require_once 'connection.php';//include the connection file

$ClientID=isset($_POST['ClientID'])?$_POST['ClientID']:"";
$StaffID=isset($_POST['StaffID'])?$_POST['StaffID']:"";
$DrugID=isset($_POST['DrugID'])?$_POST['DrugID']:"";
$Length_of_stay=isset($_POST['Length_of_stay'])?$_POST['Length_of_stay']:"";
$Vitals=isset($_POST['Vitals'])?$_POST['Vitals']:"";

$SQL = "INSERT INTO Client(StaffID,DrugID,Length_of_stay,Vitals) VALUES(";
$SQL.="'".$StaffID."', '".$DrugID."', '".$Length_of_stay."', '".$Vitals."')";
$result = mysqli_query($connection,$SQL);

if (!$result) //if the query fails
    die("Database access failed: " . mysqli_error($connection));

//otherwise
echo "a new patient has been added successfully";

?>