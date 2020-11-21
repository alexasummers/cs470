<?php
require_once 'connection.php';//include the connection file


/**get the information from the form, save it in variables*/
$fname=isset($_POST['fname'])?$_POST['fname']:"";
$lname=isset($_POST['lname'])?$_POST['lname']:"";
$date=isset($_POST['date'])?date_create_from_format('m/d/Y', $_POST['date']):"";
$dateOfBirth=date_format($date,"Y-m-d");
$g=isset($_POST['gender'])?$_POST['gender']:"";
if ($g == 'male'){
    $g= 1;}
elseif($g == 'female'){
    $g= 2;}
elseif($g == 'other'){
    $g= 3;}

/**insert a new record into the student table*/
$SQL = "INSERT INTO Student(FirstName,LastName,DateOfBirth,Gender) VALUES(";
$SQL.="'".$fname."', '".$lname."', '".$dateOfBirth."', '".$g."' )";
$result = mysqli_query($connection,$SQL);

if (!$result) //if the query fails
    die("Database access failed: " . mysqli_error($connection));

//otherwise
echo "a new student has been added successfully";

?>