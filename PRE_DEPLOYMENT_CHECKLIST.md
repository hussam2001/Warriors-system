# ✅ Pre-Deployment Checklist for Render.com

## 📋 Files That MUST Be Uploaded to GitHub

Please ensure ALL these files and folders are in your GitHub repository:

### 🔴 CRITICAL FILES (Must be present):
```
✅ app/                    (ALL files inside - your entire app directory)
✅ components/            (ALL files inside)
✅ public/                (ALL files inside, especially logo/)
✅ utils/                 (ALL files inside)
✅ types/                 (type definitions)
✅ .gitignore             (must include, but don't upload node_modules)
✅ next.config.js         (updated config)
✅ package.json           (dependencies)
✅ package-lock.json      (lock file)
✅ tsconfig.json          (TypeScript config)
✅ tailwind.config.js     (Tailwind config)
✅ postcss.config.js      (PostCSS config)
✅ middleware.ts          (middleware file)
✅ next-env.d.ts          (Next.js env types)
```

### 🟡 OPTIONAL BUT RECOMMENDED:
```
render.yaml               (Render deployment config)
README.md                 (documentation)
DEPLOYMENT_GUIDE.md       (guides)
WEB_DEPLOYMENT_GUIDE.md   (web deployment guide)
QUICK_START_WEBSITE.txt   (quick reference)
```

### ❌ DO NOT UPLOAD THESE:
```
❌ node_modules/         (excluded by .gitignore)
❌ .next/               (build output, excluded)
❌ out/                 (build output, excluded)
❌ dist/                (Electron build, excluded)
❌ .env files           (sensitive data, excluded)
❌ Electron exe files   (build artifacts)
❌ .bat files           (local scripts)
❌ .vbs files           (local scripts)
```

## 🔍 HOW TO VERIFY BEFORE UPLOADING:

### Step 1: Check Your Local Folder
Your folder should have:
- ✅ `app/` directory with all page files
- ✅ `components/` directory
- ✅ `public/` directory
- ✅ `utils/` directory
- ✅ All config files (package.json, next.config.js, etc.)

### Step 2: When Uploading to GitHub
**Method A: GitHub Desktop**
1. Make sure you can see ALL the files listed above
2. Check that `app/` folder is visible
3. Check that `components/` folder is visible
4. Exclude node_modules, .next, out, dist

**Method B: Zip Upload**
1. Create a zip of your project
2. Remove: node_modules, .next, out, dist folders
3. Extract the rest to a new folder
4. Upload that folder to GitHub

### Step 3: Double-Check on GitHub
After uploading, visit your repository on GitHub and verify:
- ✅ You can see the `app` folder
- ✅ You can see the `components` folder  
- ✅ You can see the `public` folder
- ✅ You can see the `utils` folder
- ✅ You can see config files (package.json, next.config.js, etc.)

## 🎯 RENDER.COM SETTINGS (Copy These Exactly):

When creating the web service on Render:

**Service Type:** Web Service ⚠️ (NOT Static Site)

**Settings:**
- Name: `warriors-gym-system` (or any name)
- Environment: `Node`
- Region: `Singapore` (or closest to you)
- Branch: `main`
- Root Directory: (leave empty)
- Build Command: `npm install && npm run build`
- Start Command: `npm start`
- Plan: `Free`

## 🔴 COMMON ISSUES:

**Issue 1: "Couldn't find app directory"**
- Solution: Make sure you uploaded the `app/` folder to GitHub
- Check GitHub - can you see app/ folder in the repository?

**Issue 2: "Module not found"**
- Solution: Make sure you uploaded the `components/` and `utils/` folders
- Check GitHub - are all folders visible?

**Issue 3: "Build fails"**
- Solution: Ensure package.json has all dependencies
- Check that all required files exist

## ✅ QUICK TEST BEFORE DEPLOYING:

Run this locally first to make sure it builds:
```bash
npm install
npm run build
```

If this works locally, it should work on Render!

## 📝 FINAL CHECKLIST BEFORE UPLOADING:

Before uploading to GitHub, verify:
- [ ] `app/` directory exists and is complete
- [ ] `components/` directory exists
- [ ] `public/` directory exists (with logo)
- [ ] `utils/` directory exists
- [ ] `package.json` is present
- [ ] `next.config.js` is present (with latest changes)
- [ ] `.gitignore` is present
- [ ] No node_modules folder
- [ ] No .next folder
- [ ] No out folder
- [ ] No dist folder

## 🚀 READY TO UPLOAD!

Once you've verified all files above, you're ready to:
1. Delete current GitHub repository (if needed)
2. Create a new repository
3. Upload ALL files (except node_modules, .next, out, dist)
4. Deploy to Render.com
5. Use the settings above

Good luck! 🎉

