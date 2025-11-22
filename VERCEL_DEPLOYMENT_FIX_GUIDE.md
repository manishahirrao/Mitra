# 🔧 Vercel Deployment Fix - Flutter Web App

## ❌ The Problem

Vercel cannot build Flutter apps directly because:
- Flutter SDK is not available in Vercel's build environment
- Installing Flutter during build takes too long and often fails
- Linux dependencies (cmake, ninja, GTK) are missing

## ✅ The Solution

**Build locally, deploy static files to Vercel**

---

## 🚀 Correct Deployment Process

### Step 1: Build Flutter Web Locally

On your Windows machine:

```bash
cd mandir_mitra
flutter clean
flutter pub get
flutter build web --release
```

This creates static files in: `mandir_mitra/build/web/`

### Step 2: Deploy to Vercel

You have **3 options**:

---

## Option 1: Vercel CLI (Recommended)

### Install Vercel CLI
```bash
npm install -g vercel
```

### Login
```bash
vercel login
```

### Deploy
```bash
cd mandir_mitra/build/web
vercel --prod
```

Follow the prompts:
- Set up and deploy: **Y**
- Which scope: (select your account)
- Link to existing project: **N** (first time) or **Y** (subsequent)
- Project name: **mandir-mitra**
- Directory: **.** (current directory)
- Override settings: **N**

**Done!** Your app will be live in 1-2 minutes.

---

## Option 2: Vercel Dashboard (Manual Upload)

### 1. Build Locally
```bash
cd mandir_mitra
flutter build web --release
```

### 2. Zip the Build Folder
- Go to `mandir_mitra/build/web/`
- Select all files
- Create a ZIP file

### 3. Deploy on Vercel
1. Go to https://vercel.com/dashboard
2. Click "Add New..." → "Project"
3. Click "Deploy" tab
4. Drag and drop your ZIP file
5. Click "Deploy"

---

## Option 3: GitHub Integration (Automated)

### 1. Build and Commit
```bash
cd mandir_mitra
flutter build web --release
git add build/web
git commit -m "Add production build"
git push origin main
```

### 2. Update vercel.json
The root `vercel.json` is now configured to serve static files from `mandir_mitra/build/web/`

### 3. Deploy on Vercel
1. Go to https://vercel.com
2. Import your GitHub repository
3. Configure:
   - **Framework Preset**: Other
   - **Root Directory**: (leave empty)
   - **Build Command**: (leave empty)
   - **Output Directory**: mandir_mitra/build/web
   - **Install Command**: (leave empty)
4. Click "Deploy"

---

## 📋 Quick Deployment Script

I've created an automated script for you:

### Windows: `deploy-to-vercel-fixed.bat`

```batch
@echo off
echo Building Flutter Web App...
cd mandir_mitra
flutter clean
flutter pub get
flutter build web --release
cd build\web
echo.
echo Build complete! Now deploying to Vercel...
vercel --prod
```

### Run it:
```bash
deploy-to-vercel-fixed.bat
```

---

## 🔍 Verify Your Build

Before deploying, test locally:

```bash
cd mandir_mitra/build/web
python -m http.server 8000
```

Open: http://localhost:8000

If it works locally, it will work on Vercel!

---

## 📁 What Gets Deployed

Your `mandir_mitra/build/web/` folder contains:
```
build/web/
├── index.html
├── main.dart.js
├── flutter.js
├── flutter_service_worker.js
├── manifest.json
├── assets/
│   ├── fonts/
│   ├── images/
│   └── ...
├── canvaskit/
└── icons/
```

These are **static files** that Vercel can serve directly.

---

## ⚙️ Updated Configuration Files

### Root `vercel.json`
```json
{
  "version": 2,
  "builds": [
    {
      "src": "mandir_mitra/build/web/**",
      "use": "@vercel/static"
    }
  ],
  "routes": [
    {
      "handle": "filesystem"
    },
    {
      "src": "/(.*)",
      "dest": "/mandir_mitra/build/web/index.html"
    }
  ]
}
```

This tells Vercel:
- Serve static files from `mandir_mitra/build/web/`
- Route all requests to `index.html` (for Flutter routing)

---

## 🎯 Deployment Checklist

### Before Deploying
- [ ] Flutter is installed on your machine
- [ ] Project builds successfully locally
- [ ] `mandir_mitra/build/web/` folder exists
- [ ] Vercel CLI installed (if using CLI method)

### During Deployment
- [ ] Build completes without errors
- [ ] All files are in `build/web/`
- [ ] Deployment command runs successfully

### After Deployment
- [ ] App loads on Vercel URL
- [ ] Navigation works
- [ ] Images and assets load
- [ ] No console errors

---

## 🆘 Troubleshooting

### Build Fails Locally

**Error: Flutter not found**
```bash
# Check Flutter installation
flutter doctor

# If not installed, download from:
# https://flutter.dev/docs/get-started/install
```

**Error: Dependencies issue**
```bash
cd mandir_mitra
flutter clean
rm pubspec.lock
flutter pub get
```

**Error: Web not enabled**
```bash
flutter config --enable-web
flutter create .
```

### Vercel Deployment Issues

**404 on routes**
- Check `vercel.json` has correct routing
- Ensure `index.html` is in the output directory

**Assets not loading**
- Check asset paths in `pubspec.yaml`
- Verify assets are in `build/web/assets/`

**Blank page**
- Open browser console (F12)
- Check for JavaScript errors
- Verify `main.dart.js` loads

---

## 🎉 Success!

Once deployed, your app will be at:
- **Production**: `https://your-project.vercel.app`
- **Custom Domain**: Configure in Vercel dashboard

---

## 📞 Need Help?

1. **Check build locally first**: `flutter build web --release`
2. **Test locally**: `python -m http.server 8000` in `build/web/`
3. **Use Vercel CLI**: Simplest and most reliable method
4. **Check Vercel logs**: Dashboard → Deployments → View logs

---

## 🔄 Continuous Deployment

### Automated Workflow

1. **Develop locally**
2. **Build**: `flutter build web --release`
3. **Commit build**: `git add build/web && git commit -m "Update build"`
4. **Push**: `git push origin main`
5. **Vercel auto-deploys** (if GitHub integration is set up)

Or use Vercel CLI for manual deployments:
```bash
cd mandir_mitra/build/web
vercel --prod
```

---

**Status**: ✅ Ready to deploy with correct configuration  
**Method**: Build locally → Deploy static files  
**Time**: 2-3 minutes

---

*Updated: November 22, 2025*
