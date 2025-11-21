@echo off
echo.
echo ========================================
echo   Quick Deploy to Vercel
echo ========================================
echo.

cd mandir_mitra

echo Step 1: Building Flutter web app...
call flutter build web --release

if exist "build\web\index.html" (
    echo.
    echo ✅ Build successful!
    echo.
    echo Step 2: Deploying to Vercel...
    cd build\web
    
    where vercel >nul 2>nul
    if %ERRORLEVEL% EQU 0 (
        echo.
        echo Running: vercel --prod
        echo.
        call vercel --prod
    ) else (
        echo.
        echo ❌ Vercel CLI not found!
        echo.
        echo Please install it first:
        echo   npm install -g vercel
        echo.
        echo Then run this script again.
        pause
    )
) else (
    echo.
    echo ❌ Build failed!
    echo Please check the errors above.
    pause
)
