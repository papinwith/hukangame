<?php
/**
 * Shared CSS Configuration - Pure Inline CSS (No CDN)
 * Works everywhere without external dependencies
 */
?>
<!-- Google Fonts - Sarabun Thai Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Sarabun:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
    /* Reset & Base */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    body {
        font-family: 'Sarabun', Tahoma, sans-serif;
        background: linear-gradient(135deg, #eef2ff 0%, #faf5ff 50%, #fdf4ff 100%);
        min-height: 100vh;
        color: #1f2937;
        line-height: 1.5;
    }
    
    /* Container */
    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 32px 16px;
    }
    
    .container-sm {
        max-width: 600px;
        margin: 0 auto;
        padding: 32px 16px;
    }
    
    .container-md {
        max-width: 800px;
        margin: 0 auto;
        padding: 32px 16px;
    }
    
    /* Text Styles */
    .text-center { text-align: center; }
    .text-white { color: white; }
    .text-gray { color: #6b7280; }
    .text-sm { font-size: 14px; }
    .text-lg { font-size: 18px; }
    .text-xl { font-size: 24px; }
    .text-2xl { font-size: 32px; }
    .text-3xl { font-size: 40px; }
    .font-bold { font-weight: 700; }
    .font-medium { font-weight: 500; }
    
    /* Gradient Text */
    .gradient-text {
        background: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
    }
    
    /* Spacing */
    .mb-2 { margin-bottom: 8px; }
    .mb-3 { margin-bottom: 12px; }
    .mb-4 { margin-bottom: 16px; }
    .mb-6 { margin-bottom: 24px; }
    .mb-8 { margin-bottom: 32px; }
    .mb-10 { margin-bottom: 40px; }
    .mt-4 { margin-top: 16px; }
    .mt-6 { margin-top: 24px; }
    .p-4 { padding: 16px; }
    .p-6 { padding: 24px; }
    .p-8 { padding: 32px; }
    .py-4 { padding-top: 16px; padding-bottom: 16px; }
    .px-6 { padding-left: 24px; padding-right: 24px; }
    
    /* Grid System */
    .grid {
        display: grid;
        gap: 16px;
    }
    
    .grid-2 {
        grid-template-columns: repeat(2, 1fr);
    }
    
    .grid-3 {
        grid-template-columns: repeat(3, 1fr);
    }
    
    .grid-4 {
        grid-template-columns: repeat(4, 1fr);
    }
    
    @media (max-width: 768px) {
        .grid-2, .grid-3, .grid-4 {
            grid-template-columns: repeat(2, 1fr);
        }
    }
    
    @media (max-width: 480px) {
        .grid-2, .grid-3, .grid-4 {
            grid-template-columns: 1fr;
        }
    }
    
    /* Flex */
    .flex { display: flex; }
    .flex-col { flex-direction: column; }
    .items-center { align-items: center; }
    .justify-center { justify-content: center; }
    .justify-between { justify-content: space-between; }
    .gap-2 { gap: 8px; }
    .gap-3 { gap: 12px; }
    .gap-4 { gap: 16px; }
    
    /* Cards */
    .card {
        background: white;
        border-radius: 20px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
        overflow: hidden;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }
    
    .card:hover {
        transform: translateY(-4px);
        box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
    }
    
    .card-body {
        padding: 24px;
    }
    
    /* Team Color Cards */
    .team-green {
        background: linear-gradient(135deg, #ecfdf5 0%, #d1fae5 100%);
        border: 2px solid #a7f3d0;
        border-radius: 24px;
        padding: 28px;
        margin-bottom: 16px;
    }
    
    .team-blue {
        background: linear-gradient(135deg, #eff6ff 0%, #dbeafe 100%);
        border: 2px solid #bfdbfe;
        border-radius: 24px;
        padding: 28px;
        margin-bottom: 16px;
    }
    
    .team-yellow {
        background: linear-gradient(135deg, #fffbeb 0%, #fef3c7 100%);
        border: 2px solid #fde68a;
        border-radius: 24px;
        padding: 28px;
        margin-bottom: 16px;
    }
    
    .team-red {
        background: linear-gradient(135deg, #fef2f2 0%, #fecaca 100%);
        border: 2px solid #fca5a5;
        border-radius: 24px;
        padding: 28px;
        margin-bottom: 16px;
    }
    
    .team-title-green { color: #059669; font-size: 28px; font-weight: 700; margin-bottom: 8px; }
    .team-title-blue { color: #2563eb; font-size: 28px; font-weight: 700; margin-bottom: 8px; }
    .team-title-yellow { color: #d97706; font-size: 28px; font-weight: 700; margin-bottom: 8px; }
    .team-title-red { color: #dc2626; font-size: 28px; font-weight: 700; margin-bottom: 8px; }
    
    .team-desc-green { color: #047857; font-size: 16px; }
    .team-desc-blue { color: #1d4ed8; font-size: 16px; }
    .team-desc-yellow { color: #b45309; font-size: 16px; }
    .team-desc-red { color: #b91c1c; font-size: 16px; }
    
    .team-dot {
        width: 48px;
        height: 48px;
        border-radius: 16px;
        margin-right: 16px;
        flex-shrink: 0;
    }
    
    .dot-green { background: #10b981; }
    .dot-blue { background: #3b82f6; }
    .dot-yellow { background: #fbbf24; }
    .dot-red { background: #ef4444; }
    
    /* Buttons */
    .btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        padding: 16px 32px;
        border-radius: 50px;
        font-weight: 700;
        font-size: 18px;
        text-decoration: none;
        transition: all 0.3s ease;
        border: none;
        cursor: pointer;
    }
    
    .btn-primary {
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
        color: white;
        box-shadow: 0 4px 15px rgba(99, 102, 241, 0.3);
    }
    
    .btn-primary:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 25px rgba(99, 102, 241, 0.4);
    }
    
    .btn-success {
        background: linear-gradient(135deg, #10b981 0%, #059669 100%);
        color: white;
        box-shadow: 0 4px 15px rgba(16, 185, 129, 0.3);
    }
    
    .btn-success:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 25px rgba(16, 185, 129, 0.4);
    }
    
    .btn-back {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        padding: 14px 24px;
        background: white;
        color: #374151;
        border-radius: 16px;
        font-weight: 600;
        text-decoration: none;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
    }
    
    .btn-back:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
    }
    
    /* Notice Box */
    .notice {
        background: linear-gradient(145deg, rgba(255,255,255,0.95), rgba(248,250,252,0.9));
        border-radius: 20px;
        padding: 20px;
        text-align: center;
        box-shadow: 0 4px 15px rgba(99, 102, 241, 0.1);
        border: 1px solid rgba(255,255,255,0.8);
    }
    
    /* Header Gradient */
    .header-gradient {
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
        padding: 24px;
        color: white;
        text-align: center;
    }
    
    /* Form Inputs */
    .form-input {
        width: 100%;
        padding: 16px 20px;
        border: 2px solid #e5e7eb;
        border-radius: 16px;
        font-size: 16px;
        font-family: inherit;
        transition: all 0.3s ease;
        background: #fafafa;
    }
    
    .form-input:focus {
        outline: none;
        border-color: #6366f1;
        background: white;
        box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
    }
    
    .form-label {
        display: block;
        font-weight: 700;
        color: #374151;
        margin-bottom: 8px;
        font-size: 14px;
    }
    
    /* Table */
    .table-container {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
    }
    
    table {
        width: 100%;
        border-collapse: collapse;
    }
    
    th {
        background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
        color: white;
        padding: 16px;
        text-align: left;
        font-weight: 600;
    }
    
    td {
        padding: 16px;
        border-bottom: 1px solid #f3f4f6;
    }
    
    tr:hover td {
        background: #f5f3ff;
    }
    
    /* Lightbox */
    .lightbox {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.9);
        justify-content: center;
        align-items: center;
        z-index: 9999;
    }
    
    .lightbox img {
        max-width: 95%;
        max-height: 95%;
        border-radius: 16px;
    }
    
    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-10px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    @keyframes slideUp {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    
    .animate-fade {
        animation: fadeIn 0.5s ease-out forwards;
    }
    
    .animate-slide {
        animation: slideUp 0.4s ease-out forwards;
    }
    
    /* Breadcrumb */
    .breadcrumb {
        display: flex;
        flex-wrap: wrap;
        gap: 8px;
        align-items: center;
        font-size: 14px;
        color: #6b7280;
        margin-bottom: 24px;
    }
    
    .breadcrumb a {
        color: #6b7280;
        text-decoration: none;
        transition: color 0.2s;
    }
    
    .breadcrumb a:hover {
        color: #6366f1;
    }
    
    /* Sport Card */
    .sport-card {
        background: white;
        border-radius: 20px;
        padding: 24px;
        text-align: center;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
        transition: all 0.3s ease;
        text-decoration: none;
        color: inherit;
        display: block;
    }
    
    .sport-card:hover {
        transform: translateY(-4px);
        box-shadow: 0 12px 40px rgba(0, 0, 0, 0.12);
    }
    
    .sport-icon {
        width: 64px;
        height: 64px;
        border-radius: 16px;
        background: linear-gradient(135deg, #eef2ff 0%, #e0e7ff 100%);
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 12px;
        font-size: 28px;
        transition: transform 0.3s ease;
    }
    
    .sport-card:hover .sport-icon {
        transform: scale(1.1);
    }
    
    .sport-name {
        font-weight: 700;
        color: #1f2937;
        font-size: 16px;
    }
    
    /* Modal */
    .modal {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0, 0, 0, 0.5);
        justify-content: center;
        align-items: center;
        z-index: 9999;
        padding: 16px;
    }
    
    .modal-content {
        background: white;
        border-radius: 24px;
        padding: 32px;
        max-width: 400px;
        width: 100%;
        text-align: center;
    }
    
    /* Responsive */
    @media (max-width: 768px) {
        .text-3xl { font-size: 28px; }
        .text-2xl { font-size: 24px; }
        .team-title-green, .team-title-blue, .team-title-yellow, .team-title-red { font-size: 22px; }
        .btn { padding: 14px 24px; font-size: 16px; }
    }
</style>
