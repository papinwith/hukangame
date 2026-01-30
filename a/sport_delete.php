<?php
include 'db.php';

$id = $_GET['id'] ?? '';

if (!$id) {
    die("ไม่พบรหัสกีฬา");
}

$conn->begin_transaction();

try {

    $stmt = $conn->prepare("DELETE FROM match_schedule WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $stmt = $conn->prepare("DELETE FROM sport_registration WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $stmt = $conn->prepare("DELETE FROM register_sport WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $stmt = $conn->prepare("DELETE FROM player_size WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $stmt = $conn->prepare("DELETE FROM image WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $stmt = $conn->prepare("DELETE FROM sport_type WHERE sport_id=?");
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $conn->commit();
    header("Location: sport_admin2.php");
    exit();

} catch (Throwable $e) {
    $conn->rollback();
    echo "Delete Error: ".$e->getMessage();
}
