<?php
include 'db.php';
session_start();

if (!isset($_SESSION['user_id'])) {
    echo "Please login first!";
    exit;
}

$user_id = $_SESSION['user_id'];

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];

    if (empty($username) || empty($password) || empty($email)) {
        echo "All fields are required.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Invalid email format.";
    } else {
        $password_hash = password_hash($password, PASSWORD_DEFAULT);

        // ใช้คำสั่งเตรียม (prepared statement) เพื่อป้องกัน SQL Injection
        $stmt = $conn->prepare("UPDATE users SET username=?, password=?, email=? WHERE id=?");
        $stmt->bind_param("sssi", $username, $password_hash, $email, $user_id);

        if ($stmt->execute()) {
            echo "Account updated successfully!";
        } else {
            echo "Error updating account: " . $stmt->error;
        }
        $stmt->close();
    }
}

// ใช้คำสั่งเตรียม (prepared statement) เพื่อป้องกัน SQL Injection
$stmt = $conn->prepare("SELECT username, email FROM users WHERE id=?");
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();
$stmt->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Account</title>
</head>
<body>
    <h2>Edit Account</h2>
    <form method="POST" action="">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="<?php echo htmlspecialchars($row['username']); ?>" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<?php echo htmlspecialchars($row['email']); ?>" required><br>
        <button type="submit">Update</button>
    </form>
    <a href="quiz.php"><button>Back to Quiz</button></a>
</body>
</html>

<?php
$conn->close();
?>
