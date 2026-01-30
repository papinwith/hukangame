<!DOCTYPE html>
<html lang="th">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - หูกวางเกมส์</title>
    <?php include 'tailwind-config.php'; ?>
</head>

<body>
    <div class="container" style="max-width: 800px;">
        
        <!-- Header -->
        <div class="text-center mb-10 animate-fade">
            <div style="width: 80px; height: 80px; border-radius: 24px; background: linear-gradient(135deg, #6366f1, #8b5cf6); display: flex; align-items: center; justify-content: center; margin: 0 auto 16px; box-shadow: 0 8px 25px rgba(99, 102, 241, 0.3);">
                <span style="font-size: 40px;">⚙️</span>
            </div>
            <h1 class="text-3xl font-bold mb-2">Admin Panel</h1>
            <p class="text-gray text-lg">ระบบจัดการหูกวางเกมส์ 2026</p>
        </div>
        
        <!-- Menu Grid -->
        <div class="grid grid-2 mb-10">
            
            <!-- Create Sport -->
            <a href="sport_admin.php" class="card" style="text-decoration: none;">
                <div class="card-body flex items-center gap-4">
                    <div style="width: 56px; height: 56px; border-radius: 16px; background: linear-gradient(135deg, #eef2ff, #e0e7ff); display: flex; align-items: center; justify-content: center; font-size: 24px;">🏅</div>
                    <div>
                        <h2 class="font-bold" style="color: #1f2937; font-size: 18px;">สร้างกีฬา</h2>
                        <p class="text-gray text-sm">เพิ่มประเภทกีฬาใหม่</p>
                    </div>
                </div>
            </a>
            
            <!-- Edit Sport -->
            <a href="sport_admin2.php" class="card" style="text-decoration: none;">
                <div class="card-body flex items-center gap-4">
                    <div style="width: 56px; height: 56px; border-radius: 16px; background: linear-gradient(135deg, #fef3c7, #fde68a); display: flex; align-items: center; justify-content: center; font-size: 24px;">✏️</div>
                    <div>
                        <h2 class="font-bold" style="color: #1f2937; font-size: 18px;">แก้ไขกีฬา</h2>
                        <p class="text-gray text-sm">แก้ไขข้อมูลกีฬา</p>
                    </div>
                </div>
            </a>
            
            <!-- View Students -->
            <a href="allstudent.php" class="card" style="text-decoration: none;">
                <div class="card-body flex items-center gap-4">
                    <div style="width: 56px; height: 56px; border-radius: 16px; background: linear-gradient(135deg, #d1fae5, #a7f3d0); display: flex; align-items: center; justify-content: center; font-size: 24px;">👥</div>
                    <div>
                        <h2 class="font-bold" style="color: #1f2937; font-size: 18px;">นักกีฬาแต่ละสี</h2>
                        <p class="text-gray text-sm">ดูข้อมูลผู้สมัครแข่งขัน</p>
                    </div>
                </div>
            </a>
            
            <!-- Schedule Management -->
            <a href="admin_schedule.php" class="card" style="text-decoration: none;">
                <div class="card-body flex items-center gap-4">
                    <div style="width: 56px; height: 56px; border-radius: 16px; background: linear-gradient(135deg, #fecaca, #fca5a5); display: flex; align-items: center; justify-content: center; font-size: 24px;">📅</div>
                    <div>
                        <h2 class="font-bold" style="color: #1f2937; font-size: 18px;">ตารางการแข่งขัน</h2>
                        <p class="text-gray text-sm">จัดการตารางแข่ง</p>
                    </div>
                </div>
            </a>
        </div>
        
        <!-- Back to Home -->
        <div class="text-center">
            <a href="home.php" class="btn-back">🏠 กลับหน้าหลัก</a>
        </div>
    </div>
</body>
</html>
