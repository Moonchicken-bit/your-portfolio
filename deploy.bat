@echo off
echo ========================================
echo   个人简历网站 - 快速部署脚本
echo ========================================
echo.

:menu
echo 请选择部署方式：
echo.
echo [1] 本地预览（Python服务器）
echo [2] 推送到 GitHub
echo [3] 查看部署状态
echo [4] 退出
echo.
set /p choice=请输入选项 (1-4): 

if "%choice%"=="1" goto local
if "%choice%"=="2" goto github
if "%choice%"=="3" goto status
if "%choice%"=="4" goto end
echo 无效选项，请重新选择
goto menu

:local
echo.
echo 正在启动本地服务器...
echo 访问地址: http://localhost:8000
echo 按 Ctrl+C 停止服务器
echo.
python -m http.server 8000
goto end

:github
echo.
echo 正在推送到 GitHub...
git add .
set /p message=请输入提交信息: 
git commit -m "%message%"
git push
echo.
echo 推送完成！
echo 请等待 1-2 分钟让 GitHub Pages 部署完成
echo.
pause
goto menu

:status
echo.
echo 检查部署状态...
echo.
echo GitHub Pages: https://你的用户名.github.io/portfolio/
echo Vercel: https://portfolio.vercel.app
echo.
pause
goto menu

:end
echo.
echo 感谢使用！
pause
