<?php
require_once 'connection.php';//include the connection file

$Last_name=isset($_POST['Last_name'])?$_POST['Last_name']:"";
$First_name=isset($_POST['First_name'])?$_POST['First_name']:"";
$HouseNum=isset($_POST['HouseNum'])?$_POST['HouseNum']:"";
$Street=isset($_POST['Street'])?$_POST['Street']:"";
$Apartment=isset($_POST['Apartment'])?$_POST['Apartment']:"";
$Zip=isset($_POST['Zip'])?$_POST['Zip']:"";
$Phone=isset($_POST['Phone'])?$_POST['Phone']:"";
$ICE_Fname=isset($_POST['ICE_Fname'])?$_POST['ICE_Fname']:"";
$ICE_Lname=isset($_POST['ICE_Lname'])?$_POST['ICE_Lname']:"";
$ICE_relation=isset($_POST['ICE_relation'])?$_POST['ICE_relation']:"";
$ICE_number=isset($_POST['ICE_number'])?$_POST['ICE_number']:"";
$patient_InformationID=isset($_POST['patient_InformationID'])?$_POST['patient_InformationID']:"";


$SQL = "INSERT INTO patientinformation(Last_name,First_name,HouseNum,Street,Apartment,Zip,Phone,ICE_Fname,ICE_Lname,ICE_relation,ICE_number,patient_InformationID) VALUES(";
$SQL.="'".$Last_name."', '".$First_name."', '".$HouseNum."', '".$Street."', '".$Apartment."', '".$Zip."', '".$Phone."', '".$ICE_Fname."', '".$ICE_Lname."', '".$ICE_relation."', '".$ICE_number."', '".$patient_InformationID."' )";
$result = mysqli_query($connection,$SQL);

if (!$result) //if the query fails
    die("Database access failed: " . mysqli_error($connection));

//otherwise
echo "a new patient has been added successfully";

?>