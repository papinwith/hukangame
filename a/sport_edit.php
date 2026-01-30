<?php
include 'db.php';
$id = $_GET['id'] ?? '';

$stmt = $conn->prepare("SELECT * FROM sport_type WHERE sport_id=?");
$stmt->bind_param("i",$id);
$stmt->execute();
$sport = $stmt->get_result()->fetch_assoc();

if(!$sport) die("ไม่พบข้อมูล");
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <title>แก้ไขกีฬา - Admin</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <?php include 'tailwind-config.php'; ?>
</head>
<body>
    <div class="container" style="max-width: 500px;">
        <div class="text-center mb-6 animate-fade">
            <h1 class="text-2xl font-bold mb-2">✏️ แก้ไขข้อมูลกีฬา</h1>
        </div>

        <div class="card">
            <div class="header-gradient">
                <h2 style="font-size: 18px; font-weight: 700;"><?= htmlspecialchars($sport['sport_name']) ?></h2>
            </div>
            <div class="p-6">
                <form method="post" action="sport_update.php">
                    <input type="hidden" name="sport_id" value="<?= $sport['sport_id'] ?>">
                    
                    <div class="mb-4">
                        <label class="form-label">ชื่อกีฬา</label>
                        <input type="text" name="sport_name" value="<?= htmlspecialchars($sport['sport_name']) ?>" required class="form-input">
                    </div>
                    
                    <div class="mb-4">
                        <label class="form-label">ประเภท</label>
                        <input type="text" name="category" value="<?= htmlspecialchars($sport['category']) ?>" required class="form-input">
                    </div>
                    
                    <div class="mb-6">
                        <label class="form-label">สถานที่แข่งขัน</label>
                        <input type="text" name="venue_type" value="<?= htmlspecialchars($sport['venue_type']) ?>" required class="form-input">
                    </div>
                    
                    <button type="submit" class="btn btn-primary" style="width: 100%;">
                        💾 อัปเดตข้อมูล
                    </button>
                    
                    <div class="text-center mt-4">
                        <a href="sport_admin2.php" class="btn-back">❌ ยกเลิก</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
