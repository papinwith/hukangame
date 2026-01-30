<?php
include 'db.php';

$id = $_GET['id'] ?? '';
$sql = "SELECT sr.*, ps.shirt_size FROM sport_registration sr LEFT JOIN player_size ps ON sr.student_id = ps.student_id AND sr.sport_id = ps.sport_id WHERE sr.reg_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();
$data = $stmt->get_result()->fetch_assoc();

if (isset($_POST['save'])) {
    $student_name = $_POST['student_name'];
    $sport_name   = $_POST['sport_name'];
    $category     = $_POST['category'];
    $shirt_size   = $_POST['shirt_size'];

    $stmt = $conn->prepare("UPDATE sport_registration SET student_name=?, sport_name=?, category=? WHERE reg_id=?");
    $stmt->bind_param("sssi", $student_name, $sport_name, $category, $id);
    $stmt->execute();

    $stmt = $conn->prepare("INSERT INTO player_size (student_id, sport_id, color_id, shirt_size) VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE shirt_size=VALUES(shirt_size)");
    $stmt->bind_param("siis", $data['student_id'], $data['sport_id'], $data['color_id'], $shirt_size);
    $stmt->execute();

    echo "<script>alert('แก้ไขข้อมูลเรียบร้อยแล้ว');window.location.href='allstudent.php';</script>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>แก้ไขผู้สมัคร - Admin</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container" style="max-width: 500px;">
        
        <!-- Header -->
        <div class="text-center mb-6 animate-fade">
            <h1 class="text-2xl font-bold mb-2">✏️ แก้ไขข้อมูลผู้สมัคร</h1>
        </div>
        
        <!-- Form -->
        <div class="card">
            <div class="header-gradient">
                <h2 style="font-size: 18px; font-weight: 700;">ข้อมูลนักศึกษา</h2>
            </div>
            
            <div class="p-6">
                <form method="post">
                    
                    <div class="mb-4">
                        <label class="form-label">ชื่อ-นามสกุล</label>
                        <input type="text" name="student_name" value="<?= htmlspecialchars($data['student_name']) ?>" class="form-input">
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">กีฬา</label>
                        <input type="text" name="sport_name" value="<?= htmlspecialchars($data['sport_name']) ?>" class="form-input">
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">ประเภท</label>
                        <input type="text" name="category" value="<?= htmlspecialchars($data['category']) ?>" class="form-input">
                    </div>
                    
                    <div class="mb-6">
                        <label class="form-label">ไซส์เสื้อ</label>
                        <select name="shirt_size" class="form-input">
                            <?php foreach (['XS','S','M','L','XL','2XL','3XL','4XL','5XL'] as $size): ?>
                                <option value="<?= $size ?>" <?= ($data['shirt_size'] ?? '') === $size ? 'selected' : '' ?>><?= $size ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    
                    <button type="submit" name="save" class="btn btn-primary" style="width: 100%; margin-bottom: 12px;">💾 บันทึกการเปลี่ยนแปลง</button>
                    <a href="allstudent.php" class="btn-back" style="display: block; text-align: center;">❌ ยกเลิก</a>
                    
                </form>
            </div>
        </div>
        
    </div>
</body>
</html>
