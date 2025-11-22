@echo off
echo ========================================
echo   Git Status Check
echo ========================================
echo.

git status

echo.
echo ========================================
echo   Recent Commits
echo ========================================
echo.

git log --oneline -5

echo.
pause
