@echo off
echo ========================================
echo Mandir Mitra - Vercel Deployment (Fixed)
echo ========================================
echo.

echo This script will:
echo 1. Build your Flutter web app locally
echo 2. Deploy the static files to Vercel
echo.
pause

echo Step 1: Checking Flutter installation...
flutter --version
if errorlevel 1 (
    echo.
    echo ERROR: Flutter not found!
    echo Please install Flutter from: https://flutter.dev
    pause
    exit /b 1
)
echo ✓ Flutter found
echo.

echo Step 2: Navigating to project...
cd mandir_mitra
if errorlevel 1 (
    echo ERROR: mandir_mitra folder not found!
    pause
    exit /b 1
)
echo ✓ In mandir_mitra directory
echo.

echo Step 3: Cleaning previous builds...
flutter clean
echo ✓ Clean complete
echo.

echo Step 4: Getting dependencies...
flutter pub get
if errorlevel 1 (
    echo ERROR: Failed to get dependencies!
    pause
    exit /b 1
)
echo ✓ Dependencies installed
echo.

echo Step 5: Building for web (this takes 5-10 minutes)...
flutter build web --release
if errorlevel 1 (
    echo.
    echo ERROR: Build failed!
    echo Please check the errors above and try again.
    pause
    exit /b 1
)
echo ✓ Build successful!
echo.

echo ========================================
echo BUILD COMPLETE!
echo ========================================
echo.
echo Your static files are ready in:
echo   mandir_mitra\build\web\
echo.
echo ========================================
echo DEPLOYMENT OPTIONS:
echo ========================================
echo.
echo OPTION 1: Vercel CLI (Recommended)
echo   1. Install: npm install -g vercel
echo   2. Login: vercel login
echo   3. Deploy: cd build\web ^&^& vercel --prod
echo.
echo OPTION 2: Manual Upload
echo   1. Go to https://vercel.com/dashboard
echo   2. Click "Add New" → "Project"
echo   3. Drag and drop the build\web folder
echo.
echo OPTION 3: Test Locally First
echo   1. cd build\web
echo   2. python -m http.server 8000
echo   3. Open http://localhost:8000
echo.
echo ========================================

set /p deploy="Do you want to deploy now with Vercel CLI? (y/n): "
if /i "%deploy%"=="y" (
    echo.
    echo Checking for Vercel CLI...
    vercel --version >nul 2>&1
    if errorlevel 1 (
        echo Vercel CLI not found. Installing...
        npm install -g vercel
    )
    
    echo.
    echo Deploying to Vercel...
    cd build\web
    vercel --prod
    
    echo.
    echo ========================================
    echo DEPLOYMENT COMPLETE!
    echo ========================================
    echo Your app is now live on Vercel!
) else (
    echo.
    echo Skipping deployment. You can deploy later using:
    echo   cd mandir_mitra\build\web
    echo   vercel --prod
)

echo.
pause
