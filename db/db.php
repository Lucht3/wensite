<?php
$servername = "localhost";
$username = "root";  // ชื่อผู้ใช้ MySQL (ในกรณีใช้ XAMPP, WAMP)
$password = "";      // รหัสผ่าน MySQL (ถ้าไม่มี ให้เว้นว่างไว้)
$dbname = "quiz_db"; // ชื่อฐานข้อมูลที่คุณสร้าง

// สร้างการเชื่อมต่อกับฐานข้อมูล
$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
