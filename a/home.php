<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>หูกวางเกมส์ 2026</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container">
        
        <!-- Header -->
        <div class="text-center mb-8 animate-fade">
            <h1 class="text-3xl mb-3">
                <span class="gradient-text">หูกวางเกมส์</span> 2026
            </h1>
            <p class="text-lg text-gray">🏆 มหกรรมกีฬาสีประจำปี</p>
        </div>
        
        <!-- Notice -->
        <div class="notice mb-8 animate-slide">
            <p class="font-bold text-lg">⚠️ นักศึกษา 1 คน ลงได้สูงสุด 2 ประเภทกีฬา</p>
        </div>
        
        <!-- Team Cards -->
        <div class="grid grid-2 mb-10" style="max-width: 900px; margin: 0 auto 40px;">
            
            <!-- Green Team -->
            <div class="team-green animate-slide" style="animation-delay: 0.1s;">
                <div class="flex items-center">
                    <div class="team-dot dot-green"></div>
                    <div>
                        <h2 class="team-title-green">สีเขียว</h2>
                        <p class="team-desc-green">ศิลปศาสตร์ • แพทยศาสตร์ • นิติศาสตร์ • วิศวกรรมศาสตร์</p>
                    </div>
                </div>
            </div>
            
            <!-- Blue Team -->
            <div class="team-blue animate-slide" style="animation-delay: 0.15s;">
                <div class="flex items-center">
                    <div class="team-dot dot-blue"></div>
                    <div>
                        <h2 class="team-title-blue">สีน้ำเงิน</h2>
                        <p class="team-desc-blue">นิเทศศาสตร์ • เทคโนโลยีสารสนเทศ • หลักสูตรนานาชาติ/International • ทัศนมาตรศาสตร์</p>
                    </div>
                </div>
            </div>
            
            <!-- Yellow Team -->
            <div class="team-yellow animate-slide" style="animation-delay: 0.2s;">
                <div class="flex items-center">
                    <div class="team-dot dot-yellow"></div>
                    <div>
                        <h2 class="team-title-yellow">สีเหลือง</h2>
                        <p class="team-desc-yellow">พยาบาลศาสตร์ • วิทยาศาสตร์ • รัฐศาสตร์ • SCA</p>
                    </div>
                </div>
            </div>
            
            <!-- Red Team -->
            <div class="team-red animate-slide" style="animation-delay: 0.25s;">
                <div class="flex items-center">
                    <div class="team-dot dot-red"></div>
                    <div>
                        <h2 class="team-title-red">สีแดง</h2>
                        <p class="team-desc-red">บริหารธุรกิจ • เภสัชศาสตร์ • ทันตแพทยศาสตร์ • Global MBA</p>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- CTA Buttons -->
        <div class="text-center mb-8 animate-slide" style="animation-delay: 0.3s;">
            <div class="flex justify-center gap-4" style="flex-wrap: wrap;">
                <a href="sport.php" class="btn btn-primary">📝 สมัครการแข่งขัน/Register</a>
                <a href="list.php" class="btn btn-success">📅 ตารางการแข่งขัน/Match Schedule</a>
            </div>
        </div>
        
        <!-- Footer -->
        <div class="text-center text-gray text-sm">
            <p>© 2026 หูกวางเกมส์ - มหาวิทยาลัย</p>
        </div>
    </div>
</body>
</html>
