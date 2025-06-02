<?php
$servername = "db"; // <- ESTE ES EL CAMBIO IMPORTANTE
$username = "user";
$password = "password";
$dbname = "libreria";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>
