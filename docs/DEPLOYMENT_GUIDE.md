# 🚀 PetroMind Deployment Guide
**Developed by 0xCC**

Complete guide to deploy PetroMind with Cloudflare Workers backend + GitHub Pages frontend.

---

## 📋 What You'll Need

1. **GitHub Account** (free)
2. **Cloudflare Account** (free)
3. **Your Anthropic API Key**: `sk-ant-api03-1c2ae9bd80884b4fbc652dbfb674f32f`
4. **Node.js installed** (for deploying to Cloudflare)

---

## 🔧 Part 1: Deploy Backend to Cloudflare Workers

### Step 1: Install Wrangler CLI

Open your terminal and run:

```bash
npm install -g wrangler
```

### Step 2: Login to Cloudflare

```bash
wrangler login
```

This will open a browser window. Login with your Cloudflare account.

### Step 3: Create Worker Directory

```bash
mkdir petromind-backend
cd petromind-backend
```

### Step 4: Add Files

Create two files in this directory:

**File 1: `worker.js`** (copy the content from the worker.js file I created)

**File 2: `wrangler.toml`** (copy the content from wrangler.toml file I created)

### Step 5: Add Your API Key (Secret)

Run this command and paste your API key when prompted:

```bash
wrangler secret put ANTHROPIC_API_KEY
```

Paste: `sk-ant-api03-1c2ae9bd80884b4fbc652dbfb674f32f`

### Step 6: Deploy the Worker

```bash
wrangler deploy
```

After deployment, you'll get a URL like:
```
https://petromind-backend.YOUR-USERNAME.workers.dev
```

**✅ Copy this URL! You'll need it for the frontend.**

---

## 📦 Part 2: Deploy Frontend to GitHub Pages

### Step 1: Create GitHub Repository

1. Go to https://github.com
2. Click **"New Repository"**
3. Name it: `petromind`
4. Make it **Public**
5. Click **"Create repository"**

### Step 2: Update Frontend File

Open `petromind.html` and find this line (around line 535):

```javascript
const BACKEND_API = "https://petromind-backend.YOUR_USERNAME.workers.dev";
```

Replace `YOUR_USERNAME` with your actual Cloudflare worker URL from Step 6 above.

Example:
```javascript
const BACKEND_API = "https://petromind-backend.exo2ic.workers.dev";
```

### Step 3: Upload to GitHub

**Option A: Upload via Web Interface**

1. In your GitHub repository, click **"Add file"** → **"Upload files"**
2. Upload `petromind.html`
3. Rename it to `index.html` (GitHub Pages requires this name)
4. Click **"Commit changes"**

**Option B: Upload via Git Commands**

```bash
git clone https://github.com/YOUR-USERNAME/petromind.git
cd petromind
cp /path/to/petromind.html index.html
git add index.html
git commit -m "Initial commit - PetroMind by 0xCC"
git push
```

### Step 4: Enable GitHub Pages

1. Go to your repository settings: `https://github.com/YOUR-USERNAME/petromind/settings`
2. Click **"Pages"** in the left sidebar
3. Under **"Source"**, select: **"Deploy from a branch"**
4. Under **"Branch"**, select: **"main"** and **"/ (root)"**
5. Click **"Save"**

### Step 5: Wait & Access

GitHub will build your site. After 1-2 minutes, your site will be live at:

```
https://YOUR-USERNAME.github.io/petromind
```

---

## 🌐 Part 3: Use Custom Domain (Optional)

### Step 1: Buy a Domain

Buy a domain from:
- Namecheap
- GoDaddy
- Cloudflare Registrar (cheapest!)
- Google Domains

### Step 2: Add Custom Domain to GitHub Pages

1. In your repo settings → Pages
2. Under **"Custom domain"**, enter your domain: `petromind.yourdomain.com`
3. Click **"Save"**

### Step 3: Configure DNS

In your domain provider's DNS settings, add these records:

**For subdomain (petromind.yourdomain.com):**
```
Type: CNAME
Name: petromind
Value: YOUR-USERNAME.github.io
```

**For root domain (yourdomain.com):**
```
Type: A
Name: @
Value: 185.199.108.153

Type: A
Name: @
Value: 185.199.109.153

Type: A
Name: @
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153
```

Wait 10-30 minutes for DNS propagation.

### Step 4: Enable HTTPS

After DNS propagates:
1. Go back to repo settings → Pages
2. Check **"Enforce HTTPS"**

---

## ✅ Testing Your Deployment

1. Open your GitHub Pages URL
2. Click on "General Study Assistant"
3. Ask: "What is thermodynamics?"
4. You should get a detailed response with typing animation!

---

## 🔒 Security Features

✅ **API Key is Hidden** - Stored securely in Cloudflare, never exposed in browser
✅ **CORS Protection** - Only your frontend can call the backend
✅ **Rate Limiting** - Cloudflare provides DDoS protection
✅ **HTTPS Encryption** - All traffic is encrypted

---

## 🛠️ Troubleshooting

### Problem: "Backend Not Configured" error

**Solution:** Make sure you updated `BACKEND_API` in the HTML file with your actual Cloudflare Worker URL.

### Problem: CORS error in browser console

**Solution:** The Worker has CORS enabled by default. If you still see errors:
1. Make sure your Worker deployed successfully
2. Check that the URL is exactly correct (no typos)

### Problem: Worker returns 500 error

**Solution:** 
1. Check that you added the API key secret: `wrangler secret put ANTHROPIC_API_KEY`
2. Check Worker logs: `wrangler tail`

### Problem: GitHub Pages shows 404

**Solution:**
1. Make sure the file is named `index.html` (not petromind.html)
2. Wait a few minutes for GitHub to build the site
3. Check Settings → Pages to see if deployment succeeded

---

## 📊 Monitoring & Limits

### Cloudflare Workers Free Tier:
- **100,000 requests/day**
- **10ms CPU time per request**
- More than enough for a student project!

### GitHub Pages:
- **100 GB bandwidth/month**
- **100 builds/hour**
- Perfect for hosting static sites

---

## 🎉 You're Done!

Your PetroMind AI Tutor is now live with:
- ✅ Secure backend on Cloudflare
- ✅ Fast frontend on GitHub Pages
- ✅ Optional custom domain
- ✅ Professional deployment

Share your site with classmates and enjoy studying! 📚

---

**Developed with ❤️ by 0xCC**

For questions or issues, check:
- Cloudflare Workers Docs: https://developers.cloudflare.com/workers/
- GitHub Pages Docs: https://docs.github.com/en/pages
