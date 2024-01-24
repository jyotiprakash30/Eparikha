<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit();
}
require_once 'config.php';
$sql = "SELECT * FROM questions ORDER BY RAND() LIMIT 10";
$result = $conn->query($sql);

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eparikha</title>

    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Eparikha</h1>

        <form id="quiz-form" action="calculate_score.php" method="post">
            <?php
            $i=1;
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<div class="question mb-4">';
                    echo '<p> ('. $i++ .') ' . $row['question_text'] . '</p>';
                    echo '<div class="form-check form-check-inline">';
                    echo '<label class="form-check-label"><input class="form-check-input" type="radio" name="' . $row['id'] . '" value="a"> A. ' . $row['option_a'] . '</label>';
                    echo '</div>';
                    echo '<div class="form-check form-check-inline">';
                    echo '<label class="form-check-label"><input class="form-check-input" type="radio" name="' . $row['id'] . '" value="b"> B. ' . $row['option_b'] . '</label>';
                    echo '</div>';
                    echo '<div class="form-check form-check-inline">';
                    echo '<label class="form-check-label"><input class="form-check-input" type="radio" name="' . $row['id'] . '" value="c"> C. ' . $row['option_c'] . '</label>';
                    echo '</div>';
                    echo '<div class="form-check form-check-inline">';
                    echo '<label class="form-check-label"><input class="form-check-input" type="radio" name="' . $row['id'] . '" value="d"> D. ' . $row['option_d'] . '</label>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "No questions found.";
            }
            ?>

            <div class="text-center"><button type="submit" class="btn btn-primary ">Submit</button></div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  
   
</body>
</html>
