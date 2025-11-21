@echo off
echo Fixing Git and Deploying...
echo.

REM Abort any ongoing rebase
git rebase --abort 2>nul

REM Reset to clean state
git reset --hard HEAD

REM Pull latest
git pull origin main --no-rebase

REM Add all changes
git add .

REM Commit
git commit -m "Update Vercel configuration and deploy"

REM Push
git push origin main

echo.
echo Done! Check Vercel dashboard for deployment status.
pause
