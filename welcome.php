<?php
// Start the session
session_start();

// Check if the user is not authenticated
if (!isset($_SESSION["username"])) {
    // Redirect to the login page
    header("Location: login.php");
    exit();
}
$username=$_SESSION["username"];
$previousMarks = isset($_SESSION["prev_mark"]) ? $_SESSION["prev_mark"] : "N/A";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="style.css" rel="stylesheet">
</head>
<body>

    <div class="container">
    <?php
        echo'<h2 class="my-4">Welcome to Eparikha '.  $username.'</h2>';
        if (!empty($previousMarks)) {
            echo '<p>previous attempt score: ' . $previousMarks . '</p>';
        }
        ?>
        <a href="index.php" class="btn btn-primary">Start Quiz</a>
        <a href="logout.php" class="btn btn-danger">logout</a>
    </div>

    <!-- Include Bootstrap JS and Popper.js script links here -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
