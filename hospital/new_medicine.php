<?php
include 'add_medicine.php';
?>

<html>
    
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Group 2 Hospital Mockup</title>
    <link rel="stylesheet" type="text/css" href="homepage.css">
</head>

<body>

    <div class="topnav">
        <a class="active" href="homepage.html">Home</a>
        <a href="patientInformation.php">Patient Information</a>
        <a href="medicine.php">Medicine</a>
        <a href="staff.php">Staff</a>
        <a href="sitemap.html">Sitemap</a>
        <a href="new_medicine.php">Create New Medicine</a>
        <a href="new_patient.php">Create New Patient</a>
    </div>

    <div style="padding-left:16px">
        <h2>Create New Medicine</h2>
        <form method="post" action="add_medicine.php">
            <table>
                <tr><td>Drug ID:</td><td><input type="int" name="DrugID"></td></tr>
                <tr><td>Name:</td><td><input type="varchar" name="Name"></td></tr>
                <tr><td>Interactions:</td><td><input type="varchar" name="Interactions"></td></tr>
               
                <tr><td><input type="submit" value="Submit"></td><td></td>
            </table>
        </form>
    
    </div>

</body>

</html>