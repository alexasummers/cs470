

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
        <h2>Create New Patient</h2>
        <form method="post" action="add_patient.php">
        <table>
                <tr><td>Staff ID:</td><td><input type="int" name="StaffID"></td></tr>
                <tr><td>Drug ID:</td><td><input type="int" name="DrugID"></td></tr>
                <tr><td>Length of Stay:</td><td><input type="int" name="Length_of_stay"></td></tr>
                <tr><td>Vitals:</td><td><input type="varchar" name="Vitals"></td></tr>
               
                <tr><td><input type="submit" value="Submit"></td><td></td>
            </table>
        </form>
    
    </div>

</body>

</html>