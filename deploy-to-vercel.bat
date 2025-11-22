@echo off
echo ========================================
echo Mandir Mitra - Vercel Deployment Script
echo ========================================
echo.

echo Step 1: Checking Flutter installation...
flutter --version
if errorlevel 1 (
    echo ERROR: Flutter not found! Please install Flutter first.
    echo Visit: https://flutter.dev/docs/get-started/install
    pause
    exit /b 1
)
echo ✓ Flutter found
echo.

echo Step 2: Navigating to project directory...
cd mandir_mitra
if errorlevel 1 (
    echo ERROR: mandir_mitra directory not found!
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

echo Step 5: Building for web...
echo This may take 5-10 minutes...
flutter build web --release
if errorlevel 1 (
    echo ERROR: Build failed! Check the errors above.
    pause
    exit /b 1
)
echo ✓ Build successful!
echo.

echo ========================================
echo BUILD COMPLETE!
echo ========================================
echo.
echo Your web build is ready in: mandir_mitra\build\web
echo.
echo NEXT STEPS:
echo 1. Go to https://vercel.com
echo 2. Sign in with GitHub
echo 3. Click "Add New..." → "Project"
echo 4. Select your repository: manishahirrao/Mitra
echo 5. Configure:
echo    - Root Directory: mandir_mitra
echo    - Build Command: flutter build web --release
echo    - Output Directory: build/web
echo 6. Click "Deploy"
echo.
echo OR use Vercel CLI:
echo   npm install -g vercel
echo   cd build\web
echo   vercel --prod
echo.
echo ========================================
pause
