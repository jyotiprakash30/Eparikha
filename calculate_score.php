<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eparikha</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>
<body>
<div class="container">
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $score = 0;
    require_once 'config.php';
    foreach ($_POST as $key => $value) {
            $questionId = $key;
            $sql = "SELECT * FROM questions WHERE id = $questionId";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $correctAnswer = $row['correct_answer'];

                if ($value === $correctAnswer) {
                    $score++;
                }
                else{
                    $ans=$row["option_$correctAnswer"];
                    echo '<div class="question mb-4">';
                    echo '<p>' . $row['question_text'] . '</p>';
                    echo '<p>ans: '.$ans.'</p>';
                }
            }
        }
        $conn->close();
        echo '<h2 class="text-center">Your Score: '.$score .'</h2>';
        $_SESSION["prev_mark"]=$score;
    }
 else {
    echo "Invalid request.";
}
?>
<div class="text-center"><a href="welcome.php" class="btn btn-primary ">Try again</a></div>
</div>
</body>
</html>
