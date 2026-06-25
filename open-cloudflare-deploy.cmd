@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0open-cloudflare-deploy.ps1"
echo.
pause
