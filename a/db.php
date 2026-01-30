<?php
// เปิด error reporting เพื่อช่วย debug
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hukangame";

// ป้องกัน warning ด้วย @
$conn = @new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    http_response_code(500);
    die("❌ Connection failed: " . $conn->connect_error . "<br><br>กรุณาตรวจสอบ:<br>1. ชื่อฐานข้อมูล: $dbname<br>2. Username: $username<br>3. Password<br>4. MySQL กำลังทำงานอยู่หรือไม่");
}

// ตั้งค่า character set
$conn->set_charset("utf8mb4");
// End of file (omitting closing tag to prevent whitespace issues)
