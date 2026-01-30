<?php
include 'db.php';

$id         = $_POST['sport_id'];
$name       = $_POST['sport_name'];
$category   = $_POST['category'];
$venue_type = $_POST['venue_type'];

$stmt = $conn->prepare("
    UPDATE sport_type
    SET sport_name=?, category=?, venue_type=?
    WHERE sport_id=?
");
$stmt->bind_param("sssi",$name,$category,$venue_type,$id);

if ($stmt->execute()) {
    header("Location: sport_admin2.php");
    exit();
} else {
    echo "Update Error";
}
