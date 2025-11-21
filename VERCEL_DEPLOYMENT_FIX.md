# 🔧 Fix Vercel Deployment - White Screen Issue

## Problem
Vercel is showing a white screen (404) because it's not building the Flutter app correctly.

## Solution Options

### ✅ Option 1: Pre-build and Deploy (RECOMMENDED - Easiest)

This is the simplest and most reliable method.

#### Step 1: Build locally
```bash
cd mandir_mitra
flutter build web --release
```

#### Step 2: Deploy using Vercel CLI
```bash
# Install Vercel CLI if you haven't
npm install -g vercel

# Login
vercel login

# Deploy from the build folder
cd build/web
vercel --prod
```

**That's it!** Your app will be live in seconds.

---

### Option 2: GitHub Actions (RECOMMENDED - Automated)

This automatically builds and deploys when you push to GitHub.

#### Step 1: Get Vercel Tokens

1. Go to https://vercel.com/account/tokens
2. Create a new token
3. Copy the token

#### Step 2: Get Project IDs

Run in your terminal:
```bash
cd mandir_mitra/build/web
vercel link
```

This will create a `.vercel` folder with your project details.

#### Step 3: Add GitHub Secrets

Go to your GitHub repository:
1. Settings → Secrets and variables → Actions
2. Add these secrets:
   - `VERCEL_TOKEN`: Your Vercel token
   - `VERCEL_ORG_ID`: From `.vercel/project.json`
   - `VERCEL_PROJECT_ID`: From `.vercel/project.json`

#### Step 4: Push to GitHub

```bash
git add .
git commit -m "Add Vercel deployment workflow"
git push
```

The GitHub Action will automatically build and deploy!

---

### Option 3: Vercel Build (Advanced)

If you want Vercel to build Flutter (not recommended due to long build times):

#### Update Vercel Project Settings:

1. Go to your Vercel project dashboard
2. Settings → General
3. Set:
   - **Framework Preset**: Other
   - **Root Directory**: Leave empty or set to `/`
   - **Build Command**: 
     ```bash
     cd mandir_mitra && git clone https://github.com/flutter/flutter.git -b stable --depth 1 && export PATH="$PATH:`pwd`/flutter/bin" && flutter pub get && flutter build web --release
     ```
   - **Output Directory**: `mandir_mitra/build/web`
   - **Install Command**: `echo "Installing Flutter..."`

4. Redeploy

**Note**: This takes 5-10 minutes per deployment and may timeout.

---

## Quick Fix for Current Deployment

Your current deployment is failing because Vercel doesn't know how to build Flutter.

### Immediate Solution:

1. **Build locally**:
   ```bash
   cd mandir_mitra
   flutter build web --release
   ```

2. **Deploy the build folder**:
   ```bash
   cd build/web
   vercel --prod
   ```

3. **Done!** Your app is live.

---

## Troubleshooting

### White screen after deployment?

Check browser console (F12) for errors. Common issues:

1. **Base href issue**: 
   - Check `mandir_mitra/web/index.html`
   - Ensure `<base href="/">` is present

2. **Asset loading issues**:
   - Verify all files are in `build/web`
   - Check network tab for 404 errors

3. **Routing issues**:
   - Ensure `vercel.json` has proper rewrites
   - Check that `vercel.json` is in the root directory

### Build fails locally?

```bash
flutter clean
flutter pub get
flutter build web --release
```

### Vercel CLI not found?

```bash
npm install -g vercel
```

---

## Recommended Workflow

For the best experience:

1. **Develop locally**: `flutter run -d chrome`
2. **Build**: `flutter build web --release`
3. **Deploy**: `cd build/web && vercel --prod`

Or set up GitHub Actions for automatic deployment on every push!

---

## Files Created

- ✅ `vercel.json` - Vercel configuration (root level)
- ✅ `.github/workflows/deploy-vercel.yml` - GitHub Actions workflow
- ✅ `mandir_mitra/build.sh` - Build script
- ✅ `mandir_mitra/deploy.bat` - Windows deployment script
- ✅ `mandir_mitra/deploy.sh` - Mac/Linux deployment script

Choose the method that works best for you!
