# Vercel Deployment Guide for Mandir Mitra

## ✅ GitHub Push Complete!

Your code has been successfully pushed to: `https://github.com/manishahirrao/Mitra`

---

## 🚀 Deploy to Vercel - Step by Step

### Option 1: Deploy via Vercel Dashboard (Recommended)

1. **Go to Vercel**
   - Visit: https://vercel.com
   - Sign in with your GitHub account

2. **Import Project**
   - Click "Add New..." → "Project"
   - Select "Import Git Repository"
   - Choose `manishahirrao/Mitra` from your repositories
   - Click "Import"

3. **Configure Project**
   ```
   Framework Preset: Other
   Root Directory: mandir_mitra
   Build Command: flutter/bin/flutter build web --release
   Output Directory: mandir_mitra/build/web
   Install Command: (leave empty)
   ```

4. **Environment Variables** (if needed)
   ```
   API_BASE_URL=your_api_url
   RAZORPAY_KEY=your_razorpay_key
   ```

5. **Deploy**
   - Click "Deploy"
   - Wait for build to complete (5-10 minutes)
   - Your app will be live at: `https://your-project.vercel.app`

---

### Option 2: Deploy via Vercel CLI

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Navigate to Project**
   ```bash
   cd mandir_mitra
   ```

4. **Build Flutter Web**
   ```bash
   flutter build web --release
   ```

5. **Deploy**
   ```bash
   vercel --prod
   ```

6. **Follow Prompts**
   - Set up and deploy: Y
   - Which scope: (select your account)
   - Link to existing project: N
   - Project name: mandir-mitra
   - Directory: ./build/web
   - Override settings: N

---

## 📋 Pre-Deployment Checklist

### ✅ Code Ready
- [x] All files committed to Git
- [x] Pushed to GitHub
- [x] README.md created
- [x] Documentation complete

### ⚠️ Flutter Web Build Requirements

Before deploying, ensure Flutter web build works:

```bash
cd mandir_mitra
flutter clean
flutter pub get
flutter build web --release
```

If build succeeds, you're ready to deploy!

### 🔧 Common Build Issues

**Issue 1: Flutter not found**
```bash
# Install Flutter if not installed
# Download from: https://flutter.dev/docs/get-started/install
```

**Issue 2: Dependencies error**
```bash
cd mandir_mitra
flutter pub get
flutter pub upgrade
```

**Issue 3: Web not enabled**
```bash
flutter config --enable-web
flutter create .
```

---

## 🌐 Vercel Configuration Files

### vercel.json (Root)
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
      "src": "/(.*)",
      "dest": "/mandir_mitra/build/web/$1"
    }
  ]
}
```

### vercel.json (mandir_mitra/)
```json
{
  "buildCommand": "flutter build web --release",
  "outputDirectory": "build/web",
  "framework": null,
  "installCommand": "flutter pub get"
}
```

---

## 🔄 Automatic Deployments

Once connected to Vercel:
- **Every push to `main`** → Automatic production deployment
- **Every pull request** → Preview deployment
- **Every branch** → Preview deployment

---

## 🎯 Post-Deployment

### 1. Test Your Deployment
Visit your Vercel URL and test:
- [ ] Home page loads
- [ ] Navigation works
- [ ] All screens accessible
- [ ] Images load correctly
- [ ] Responsive design works

### 2. Custom Domain (Optional)
1. Go to Vercel Dashboard → Your Project → Settings → Domains
2. Add your custom domain
3. Follow DNS configuration instructions

### 3. Performance Optimization
- Enable Vercel Analytics
- Set up monitoring
- Configure caching headers

---

## 📊 Deployment Status

### Current Status
- ✅ Code pushed to GitHub
- ⏳ Vercel deployment pending
- ⏳ Production URL pending

### Next Steps
1. Go to https://vercel.com
2. Import your GitHub repository
3. Configure build settings
4. Deploy!

---

## 🆘 Troubleshooting

### Build Fails on Vercel

**Check Build Logs**
- Go to Vercel Dashboard → Deployments → Click failed deployment
- Review build logs for errors

**Common Fixes**
```bash
# Locally test the build
cd mandir_mitra
flutter clean
flutter pub get
flutter build web --release

# If successful, commit and push
git add .
git commit -m "Fix build issues"
git push origin main
```

### App Loads But Blank Screen

**Check Console Errors**
- Open browser DevTools (F12)
- Check Console tab for errors
- Check Network tab for failed requests

**Common Issues**
- Base href in index.html
- Asset paths incorrect
- CORS issues with APIs

### Routing Issues

**Update web/index.html**
```html
<base href="/">
```

**Update vercel.json**
```json
{
  "routes": [
    { "handle": "filesystem" },
    { "src": "/.*", "dest": "/index.html" }
  ]
}
```

---

## 📞 Support

- **Vercel Docs**: https://vercel.com/docs
- **Flutter Web**: https://flutter.dev/web
- **GitHub Issues**: https://github.com/manishahirrao/Mitra/issues

---

## 🎉 Success!

Once deployed, your app will be live at:
- **Production**: `https://mandir-mitra.vercel.app` (or your custom domain)
- **Preview**: `https://mandir-mitra-git-branch.vercel.app`

Share your live URL with the team! 🚀

---

**Last Updated**: November 22, 2025  
**Status**: Ready for Deployment
