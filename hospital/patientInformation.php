<?php
include 'show_patient.php';
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
        <a href="staff.html">Staff</a>
        <a href="sitemap.html">Sitemap</a>
    </div>

    <div style="padding-left:16px">
        <h2>Patient Information</h2>
        <?php echo $html ?>
    
    </div>

</body>

</html>