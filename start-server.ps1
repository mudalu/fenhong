# 分红系统原型 - 本地服务器启动脚本

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "   分红系统原型 - 本地服务器启动" -ForegroundColor Cyan
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "正在启动本地服务器..." -ForegroundColor Green
Write-Host "服务器地址: http://localhost:8080" -ForegroundColor Yellow
Write-Host "按 Ctrl+C 停止服务器" -ForegroundColor Yellow
Write-Host ""
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# 检查Python是否安装
try {
    $pythonVersion = python --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "Python not found"
    }
    Write-Host "检测到Python: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "错误: 未找到Python，请先安装Python" -ForegroundColor Red
    Write-Host "下载地址: https://www.python.org/downloads/" -ForegroundColor Yellow
    Read-Host "按回车键退出"
    exit 1
}

# 启动Python HTTP服务器
try {
    Write-Host "启动Python HTTP服务器..." -ForegroundColor Green
    Write-Host "在浏览器中访问: http://localhost:8080" -ForegroundColor Cyan
    Write-Host ""
    
    # 尝试自动打开浏览器
    Start-Sleep -Seconds 2
    try {
        Start-Process "http://localhost:8080"
        Write-Host "已自动打开浏览器" -ForegroundColor Green
    } catch {
        Write-Host "请手动在浏览器中访问: http://localhost:8080" -ForegroundColor Yellow
    }
    
    python -m http.server 8080
} catch {
    Write-Host "启动服务器时出错: $_" -ForegroundColor Red
} finally {
    Write-Host ""
    Write-Host "服务器已停止" -ForegroundColor Yellow
    Read-Host "按回车键退出"
}