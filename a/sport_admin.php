<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $sport_name = trim($_POST['sport_name'] ?? '');
    $sport_type = trim($_POST['sport_type'] ?? '');
    $venue_type = trim($_POST['venue_type'] ?? '');

    if ($sport_name === '' || $sport_type === '' || $venue_type === '') {
        echo "<script>alert('❌ กรุณากรอกข้อมูลให้ครบทุกช่อง');history.back();</script>";
        exit();
    }

    $stmt = $conn->prepare("INSERT INTO sport_type (sport_name, category, venue_type) VALUES (?,?,?)");
    $stmt->bind_param("sss", $sport_name, $sport_type, $venue_type);

    if ($stmt->execute()) {
        echo "<script>alert('✅ บันทึกข้อมูลสำเร็จ');window.location='sport_admin.php';</script>";
        exit();
    } else {
        echo "<script>alert('❌ เกิดข้อผิดพลาด');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>สร้างกีฬา - Admin</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body style="display: flex; align-items: center; justify-content: center; min-height: 100vh; padding: 16px;">
    
    <div class="card" style="width: 100%; max-width: 500px;">
        
        <!-- Header -->
        <div class="header-gradient">
            <div style="width: 64px; height: 64px; border-radius: 16px; background: rgba(255,255,255,0.2); display: flex; align-items: center; justify-content: center; margin: 0 auto 12px; font-size: 32px;">🏅</div>
            <h1 style="font-size: 24px; font-weight: 700;">สร้างกีฬาใหม่</h1>
        </div>
        
        <!-- Form -->
        <div class="p-6">
            <form method="post">
                
                <div class="mb-4">
                    <label class="form-label">🏆 ชื่อกีฬา</label>
                    <input type="text" name="sport_name" placeholder="เช่น ฟุตบอล" required class="form-input">
                </div>
                
                <div class="mb-4">
                    <label class="form-label">📋 ประเภทกีฬา</label>
                    <input type="text" name="sport_type" placeholder="เช่น ทีมชาย / ทีมหญิง / เดี่ยว" required class="form-input">
                </div>
                
                <div class="mb-6">
                    <label class="form-label">📍 สถานที่แข่งขัน</label>
                    <input type="text" name="venue_type" placeholder="เช่น อาคาร / สนามกีฬา" required class="form-input">
                </div>
                
                <button type="submit" class="btn btn-primary" style="width: 100%; margin-bottom: 16px;">💾 บันทึกข้อมูล</button>
                
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                    <a href="sport_admin2.php" class="btn-back text-center">✏️ แก้ไขกีฬา</a>
                    <a href="homeadmin.php" class="btn-back text-center">🏠 หน้าหลัก</a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
