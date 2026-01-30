<?php
include 'db.php';
$color_id = $_GET['color_id'] ?? '';
?>
<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>เลือกสี/กีฬา - Admin</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container" style="max-width: 900px;">
        
        <!-- Header -->
        <div class="text-center mb-8 animate-fade">
            <h1 class="text-2xl font-bold mb-2">👥 ผู้เข้าแข่งขัน</h1>
            <p class="text-gray">เลือกสีและกีฬาเพื่อดูรายชื่อนักกีฬา</p>
        </div>
        
        <!-- Navigation -->
        <div class="text-center mb-8">
            <a href="homeadmin.php" class="btn-back" style="margin-right: 8px;">← Admin Home</a>
            <?php if($color_id): ?>
            <a href="allstudent.php" class="btn-back">🔄 เลือกสีใหม่</a>
            <?php endif; ?>
        </div>
        
        <?php if(!$color_id): ?>
        <!-- Select Color -->
        <div class="mb-8">
            <h2 class="text-center font-bold text-lg mb-6">🎨 เลือกสี</h2>
            
            <div class="grid grid-2">
                <!-- Green -->
                <a href="?color_id=3" class="team-green" style="text-decoration: none;">
                    <div class="flex items-center">
                        <div class="team-dot dot-green"></div>
                        <div>
                            <h3 class="team-title-green">สีเขียว</h3>
                            <p class="team-desc-green">ศิลป์ • แพทย์ • นิติ • วิศวะ</p>
                        </div>
                    </div>
                </a>
                
                <!-- Blue -->
                <a href="?color_id=4" class="team-blue" style="text-decoration: none;">
                    <div class="flex items-center">
                        <div class="team-dot dot-blue"></div>
                        <div>
                            <h3 class="team-title-blue">สีน้ำเงิน</h3>
                            <p class="team-desc-blue">นิเทศ • IT • Inter • ทัศนมาตร์</p>
                        </div>
                    </div>
                </a>
                
                <!-- Yellow -->
                <a href="?color_id=2" class="team-yellow" style="text-decoration: none;">
                    <div class="flex items-center">
                        <div class="team-dot dot-yellow"></div>
                        <div>
                            <h3 class="team-title-yellow">สีเหลือง</h3>
                            <p class="team-desc-yellow">พยาบาล • วิทย์ • รัฐศาสตร์ • SCA</p>
                        </div>
                    </div>
                </a>
                
                <!-- Red -->
                <a href="?color_id=1" class="team-red" style="text-decoration: none;">
                    <div class="flex items-center">
                        <div class="team-dot dot-red"></div>
                        <div>
                            <h3 class="team-title-red">สีแดง</h3>
                            <p class="team-desc-red">บริหาร • เภสัช • ทันตะ • Global</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <?php endif; ?>
        
        <?php if($color_id): ?>
        <!-- Select Sport -->
        <div>
            <h2 class="text-center font-bold text-lg mb-4">🏅 เลือกกีฬา</h2>
            
            <?php
            $colorNames = [1 => 'แดง', 2 => 'เหลือง', 3 => 'เขียว', 4 => 'น้ำเงิน'];
            $colorBg = [1 => '#ef4444', 2 => '#fbbf24', 3 => '#10b981', 4 => '#3b82f6'];
            ?>
            
            <div class="notice mb-6">
                <span style="display: inline-block; width: 20px; height: 20px; border-radius: 50%; background: <?= $colorBg[$color_id] ?? '#6b7280' ?>; margin-right: 8px; vertical-align: middle;"></span>
                <span class="font-bold">กำลังดู: สี<?= $colorNames[$color_id] ?? 'ไม่ระบุ' ?></span>
            </div>
            
            <div class="grid grid-4">
                <?php
                $sql = "SELECT DISTINCT sport_name FROM sport_type ORDER BY sport_name";
                $sports = $conn->query($sql);
                
                if($sports && $sports->num_rows > 0) {
                    while($s = $sports->fetch_assoc()):
                ?>
                <a href="allstudent2.php?color_id=<?= $color_id ?>&sport_name=<?= urlencode($s['sport_name']) ?>" class="sport-card">
                    <div class="sport-icon">🎯</div>
                    <div class="sport-name"><?= htmlspecialchars($s['sport_name']) ?></div>
                </a>
                <?php 
                    endwhile;
                } else {
                    echo '<div class="notice" style="grid-column: span 4;"><p class="text-gray">⚠️ ไม่พบข้อมูลกีฬา</p></div>';
                }
                ?>
            </div>
        </div>
        <?php endif; ?>
    </div>
</body>
</html>
