@echo off
title Deploy RK Traders to Vercel
cd /d "%~dp0"

echo ========================================================
echo   RK Traders - Automatic Vercel Deployment
echo ========================================================
echo.
echo If this is your first time, Vercel will ask you to login in the browser.
echo Follow the prompts on the screen (Press Enter to accept defaults).
echo.
npx --yes vercel
echo.
echo ========================================================
echo   Deployment completed! To promote to production:
echo   Run: npx vercel --prod
echo ========================================================
pause
