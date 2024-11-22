@echo off
REM 添加所有更改
git add .

REM 提交更改並附帶描述訊息
git commit -m "update 2024-0820&0924&1022 pages"

REM 推送更改到遠端倉庫的 master 分支
git push -u origin master

pause
