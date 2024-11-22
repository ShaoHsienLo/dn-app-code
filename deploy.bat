@echo off
REM 啟用錯誤檢測，如果某個命令失敗，則退出批次文件
setlocal enabledelayedexpansion

REM 停止執行當前的批次文件並回傳錯誤碼
if errorlevel 1 exit /b

REM 執行 npm build
echo Running npm build...
npm run build || exit /b

REM 進入 dist 目錄
cd dist || exit /b

REM 初始化 Git 並提交所有檔案
echo Initializing Git...
git init || exit /b
git add -A || exit /b
git commit -m "update 2024-0820&0924&1022 pages" || exit /b

REM 推送到指定遠端倉庫的 gh-pages 分支
echo Pushing to GitHub...
git push -f https://github.com/ShaoHsienLo/dn-app.git master:gh-pages || exit /b

REM 返回原始目錄
cd ..
pause
