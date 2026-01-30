<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>สมัครการแข่งขัน - หูกวางเกมส์</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container">
        
        <!-- Header -->
        <div class="text-center mb-8 animate-fade">
            <h1 class="text-2xl font-bold mb-2">📝 สมัครการแข่งขัน</h1>
            <p class="text-gray">เลือกประเภทกีฬาที่ต้องการสมัคร</p>
        </div>
        
        <!-- Sports Grid -->
        <div class="grid grid-4 mb-10" style="max-width: 900px; margin: 0 auto 40px;">
            <?php
            $conn = mysqli_connect("localhost", "root", "", "hukangame");
            if ($conn) {
                mysqli_set_charset($conn, "utf8");
                $result = mysqli_query($conn, "SELECT DISTINCT sport_name FROM sport_type ORDER BY sport_name");
                while ($row = mysqli_fetch_assoc($result)) {
                    $sportName = htmlspecialchars($row['sport_name']);
                    $sportUrl = urlencode($row['sport_name']);
                    echo "
                    <a href=\"typeos_sport.php?sport_name={$sportUrl}\" class=\"sport-card\">
                        <div class=\"sport-icon\">🏅</div>
                        <div class=\"sport-name\">{$sportName}</div>
                    </a>
                    ";
                }
                mysqli_close($conn);
            }
            ?>
        </div>
        
        <!-- Back Button -->
        <div class="text-center">
            <a href="home.php" class="btn-back">← กลับหน้าหลัก/Go Back</a>
        </div>
    </div>
</body>
</html>
