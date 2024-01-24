<?php
require_once 'config.php';
$errorMessage = $successMessage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $username = $_POST["username"];
    $password = $_POST["password"];
    $confirm_password = $_POST["confirm_password"];

    if (strlen($password) < 6) {
        $errorMessage = "Password must contain at least 6 characters.";
    } elseif ($password != $confirm_password) {
        $errorMessage = "Passwords do not match. Please try again.";
    } else {

        $hashed_password = md5($password);
        $checkUsernameQuery = "SELECT id FROM users WHERE username = '$username'";
        $result = $conn->query($checkUsernameQuery);

        if ($result->num_rows > 0) {
            $errorMessage = "Username already exists. Please choose a different username.";
        } else {
            $insertQuery = "INSERT INTO users (username, password) VALUES ('$username', '$hashed_password')";

            if ($conn->query($insertQuery) === TRUE) {
                $successMessage = "User registered successfully.";
            } else {
                $errorMessage = "Error: " . $insertQuery . "<br>" . $conn->error;
            }
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>
<body>
<div class="loginbody">
    <form action="signup.php" method="post" class="m-4 loginform">
    <?php
            if (!empty($errorMessage)) {
                echo '<p class="text-center text-danger">' . $errorMessage . '</p>';
            } elseif (!empty($successMessage)) {
                echo '<p class="text-center text-success">' . $successMessage . '</p>';
            }
            ?>
        <div class="text-center"><h2 class="mb-4">Sign Up</h2></div>

        <label for="username" class="form-label ">Username:</label>
        <input type="text" id="username" name="username" class="form-control m-2" required>

        <label for="password" class="form-label ">Password:</label>
        <input type="password" id="password" name="password" class="form-control m-2" required>

        <label for="confirm_password" class="form-label ">Confirm Password:</label>
        <input type="password" id="confirm_password" name="confirm_password" class="form-control m-2" required>

        <div class="text-center"><button type="submit" class="btn btn-primary m-2">Sign Up</button></div>
        <p class="mt-3 text-center">Already have an account? <a href="login.php">Login here</a>.</p>
    </form>
</div>


 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html> 
