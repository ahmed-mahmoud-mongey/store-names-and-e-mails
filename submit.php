<?php
// Database connection details
$servername = "http://localhost";
$username = "mysqluser";
$password = "mysql1234";
$dbname = "contacts";

// Connect to the database
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["name"];
    $email = $_POST["email"];

    // Insert data into the database
    $sql = "INSERT INTO contactstable (name, email) VALUES ('$name', '$email')";
    if ($conn->query($sql) === true) {
        echo "Data inserted successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the database connection
$conn->close();
?>
