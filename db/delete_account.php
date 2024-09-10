<?php
include 'db.php';
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "Please login first!";
    exit;
}

$user_id = $_SESSION['user_id'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sql = "DELETE FROM users WHERE id=$user_id";
    
    if ($conn->query($sql) === TRUE) {
        echo "Account deleted successfully!";
        session_destroy(); // ลบเซสชัน
        header("Location: login.php"); // เปลี่ยนเส้นทางไปยังหน้า login
        exit;
    } else {
        echo "Error deleting account: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Account</title>
</head>
<body>
    <h2>Are you sure you want to delete your account?</h2>
    <form method="POST" action="">
        <button type="submit">Delete Account</button>
    </form>
    <a href="quiz.php"><button>Back to Quiz</button></a>
</body>
</html>

<?php
$conn->close();
?>
