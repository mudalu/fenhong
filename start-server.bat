@echo off
echo ====================================
echo     分红系统原型 - 本地服务器启动
echo ====================================
echo.
echo 正在启动本地服务器...
echo 服务器地址: http://localhost:8080
echo 按 Ctrl+C 停止服务器
echo.
echo ====================================
echo.

:: 检查Python是否安装
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误: 未找到Python，请先安装Python
    echo 下载地址: https://www.python.org/downloads/
    pause
    exit /b 1
)

:: 启动Python HTTP服务器
echo 启动Python HTTP服务器...
python -m http.server 8080

echo.
echo 服务器已停止
pause