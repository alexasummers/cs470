<?php
include 'show_staff.php';
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
        <a href="login(open_first).html">Logout</a>
    </div>


    <div style="padding-left:16px">
        <h2>Staff Information</h2>
        <?php echo $html ?>
    
    </div>

</body>

</html>