<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "sklep_2c1";

    $conn = new mysqli($servername, $username, $password, $database);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>
