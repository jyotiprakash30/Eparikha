<?php
require_once 'config.php';

$errorMessage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $hashed_password = md5($password);
    $sql = "SELECT id FROM users WHERE username = '$username' AND password = '$hashed_password'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        session_start();
        $_SESSION["username"] = $username;
        header("Location: welcome.php");
        exit();
    } else {
        $errorMessage = "Invalid username or password. Please try again.";
    }
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>
<body>

    <div class="loginbody">
        <form action="" method="post" class="m-4 loginform">
            <h2 class="text-center mb-4">Login</h2>

            <?php
            if (!empty($errorMessage)) {
                echo '<p class="text-center text-danger">' . $errorMessage . '</p>';
            }
            ?>

            <label for="username" class="form-label">Username:</label>
            <input type="text" id="username" name="username" class="form-control" required>

            <label for="password" class="form-label">Password:</label>
            <input type="password" id="password" name="password" class="form-control" required>

            <div class="text-center"><button type="submit" class="btn btn-primary m-2">Login</button></div>

            <p class="text-center mt-3">Don't have an account? <a href="signup.php">Sign up here</a>.</p>
        </form>
    </div>

</body>
</html>