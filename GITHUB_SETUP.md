# 🎯 GitHub Repository Setup - Step by Step

**Developed by 0xCC**

Follow these exact steps to set up your GitHub repository for PetroMind.

---

## 📋 Prerequisites

✅ GitHub account created  
✅ Git installed on your computer  
✅ All project files downloaded  

---

## 🚀 Setup Instructions

### **Option 1: Upload via GitHub Website (Easiest)**

#### Step 1: Create Repository
1. Go to https://github.com
2. Click green **"New"** button (or `+` → New repository)
3. Repository name: `petromind`
4. Description: `AI Study Assistant for Petroleum Engineering - by 0xCC`
5. Make it **Public**
6. ✅ Check "Add a README file"
7. Click **"Create repository"**

#### Step 2: Create Folder Structure
1. In your repository, click **"Add file"** → **"Create new file"**
2. Type: `backend/worker.js` (this creates the backend folder)
3. Copy contents from `worker.js` file
4. Click **"Commit changes"**

#### Step 3: Upload Backend Files
1. Navigate to `backend/` folder in your repo
2. Click **"Add file"** → **"Upload files"**
3. Upload:
   - `wrangler.toml`
   - `deploy.sh`
4. Commit changes

#### Step 4: Create Docs Folder
1. Go back to root
2. Click **"Add file"** → **"Create new file"**
3. Type: `docs/DEPLOYMENT_GUIDE.md`
4. Copy contents from `DEPLOYMENT_GUIDE.md`
5. Commit changes

#### Step 5: Upload Main Files
1. Go back to repository root
2. Click **"Add file"** → **"Upload files"**
3. Upload:
   - `index.html` (rename `petromind.html` to `index.html`)
   - `.gitignore`
4. Commit changes

#### Step 6: Update README
1. Click on `README.md` in your repo
2. Click pencil icon (✏️) to edit
3. Replace content with the `README.md` file I provided
4. Commit changes

---

### **Option 2: Upload via Git Commands (Advanced)**

#### Step 1: Create Repository on GitHub
Same as Option 1, Step 1 above.

#### Step 2: Prepare Local Files
```bash
# Create project folder
mkdir petromind
cd petromind

# Initialize git
git init

# Create folder structure
mkdir -p backend docs .github/workflows

# Copy files to correct locations
# (Copy petromind.html as index.html to root)
# (Copy worker.js, wrangler.toml, deploy.sh to backend/)
# (Copy DEPLOYMENT_GUIDE.md to docs/)
# (Copy .gitignore to root)
# (Copy README.md to root)
```

#### Step 3: Push to GitHub
```bash
# Add remote
git remote add origin https://github.com/YOUR-USERNAME/petromind.git

# Add all files
git add .

# Commit
git commit -m "Initial commit - PetroMind by 0xCC"

# Push
git branch -M main
git push -u origin main
```

---

## 📁 Final Repository Structure

After setup, your repo should look like this:

```
petromind/
├── index.html
├── backend/
│   ├── worker.js
│   ├── wrangler.toml
│   └── deploy.sh
├── docs/
│   └── DEPLOYMENT_GUIDE.md
├── .gitignore
└── README.md
```

---

## ⚙️ Enable GitHub Pages

1. Go to your repository
2. Click **"Settings"** tab
3. Click **"Pages"** in left sidebar
4. Under **"Source"**:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **"Save"**
6. Wait 1-2 minutes
7. Your site will be live! 🎉

**URL:** `https://YOUR-USERNAME.github.io/petromind`

---

## 🔑 Add GitHub Secrets (Optional - for Auto-Deploy)

If you want automatic deployment when you push changes:

1. Go to **Settings** → **Secrets and variables** → **Actions**
2. Click **"New repository secret"**
3. Add these secrets:
   - Name: `CLOUDFLARE_API_TOKEN`
     Value: (get from Cloudflare dashboard → API Tokens)
   - Name: `ANTHROPIC_API_KEY`
     Value: `sk-ant-api03-1c2ae9bd80884b4fbc652dbfb674f32f`

---

## ✅ Verify Setup

Check these items:

- [ ] Repository is public
- [ ] `index.html` exists in root (not `petromind.html`)
- [ ] Backend files are in `backend/` folder
- [ ] GitHub Pages is enabled
- [ ] Site is accessible at GitHub Pages URL

---

## 🎉 Next Steps

1. ✅ Repository setup complete
2. 📦 Deploy backend to Cloudflare (see `docs/DEPLOYMENT_GUIDE.md`)
3. 🔗 Update `BACKEND_API` in `index.html`
4. 🚀 Push changes
5. 🎊 Share with classmates!

---

## 🆘 Troubleshooting

**Problem:** GitHub Pages shows 404

**Solution:** Make sure file is named `index.html` (not `petromind.html`)

---

**Problem:** Can't see .gitignore file

**Solution:** It's hidden. In GitHub web, you can still upload it. On your computer, enable "Show hidden files"

---

**Need Help?**

Check `docs/DEPLOYMENT_GUIDE.md` for detailed instructions.

---

**Developed by 0xCC** 🚀
