@echo off
title Push RK Traders to GitHub
set "PATH=%LOCALAPPDATA%\Programs\Git\cmd;%PATH%"
cd /d "%~dp0"

echo ========================================================
echo   RK Traders - Automatic GitHub Repository Publisher
echo ========================================================
echo.
echo Please create a new empty repository at https://github.com/new
echo (Recommended name: rktraders-website)
echo.
set /p REPO_URL="Enter your GitHub Repository URL (e.g., https://github.com/username/rktraders-website.git): "
echo.
echo Connecting to GitHub and pushing files...
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main
git push -u origin main
echo.
echo ========================================================
echo   Done! Your code is now published on GitHub.
echo ========================================================
pause
