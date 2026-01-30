<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เลือกประเภท - หูกวางเกมส์</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container">
        <?php
        $sport_name = isset($_GET['sport_name']) ? $_GET['sport_name'] : '';
        ?>
        
        <!-- Breadcrumb -->
        <div class="breadcrumb">
            <a href="home.php">🏠 หน้าหลัก</a>
            <span>›</span>
            <a href="sport.php">สมัครแข่งขัน</a>
            <span>›</span>
            <span style="color: #1f2937; font-weight: 500;"><?= htmlspecialchars($sport_name) ?></span>
        </div>
        
        <!-- Header -->
        <div class="text-center mb-8 animate-fade">
            <?php if ($sport_name): ?>
                <h1 class="text-2xl font-bold mb-2">🏆 <?= htmlspecialchars($sport_name) ?></h1>
                <p class="text-gray">เลือกประเภทที่ต้องการสมัคร</p>
            <?php else: ?>
                <h1 class="text-2xl font-bold" style="color: #ef4444;">⚠️ ไม่พบข้อมูลกีฬา</h1>
            <?php endif; ?>
        </div>
        
        <!-- Category Cards -->
        <div class="grid grid-3 mb-10" style="max-width: 800px; margin: 0 auto 40px;">
            <?php
            if ($sport_name) {
                $conn = mysqli_connect("localhost", "root", "", "hukangame");
                if ($conn) {
                    mysqli_set_charset($conn, "utf8");
                    $stmt = mysqli_prepare($conn, "SELECT sport_id, category FROM sport_type WHERE sport_name = ? ORDER BY category");
                    mysqli_stmt_bind_param($stmt, "s", $sport_name);
                    mysqli_stmt_execute($stmt);
                    $result = mysqli_stmt_get_result($stmt);
                    
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "
                        <a href=\"sport01.php?sport_id={$row['sport_id']}&category=" . urlencode($row['category']) . "\" class=\"sport-card\">
                            <div class=\"sport-icon\">🎯</div>
                            <div class=\"sport-name\">" . htmlspecialchars($row['category']) . "</div>
                            <p style=\"color: #6b7280; font-size: 14px; margin-top: 4px;\">คลิกเพื่อสมัคร →</p>
                        </a>
                        ";
                    }
                    mysqli_stmt_close($stmt);
                    mysqli_close($conn);
                }
            }
            ?>
        </div>
        
        <!-- Back Button -->
        <div class="text-center">
            <a href="sport.php" class="btn-back">← กลับไปเลือกกีฬา/Go Back</a>
        </div>
    </div>
</body>
</html>
