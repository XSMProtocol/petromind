# 📁 PetroMind - Repository Structure

```
petromind/
├── index.html              # Frontend application (GitHub Pages)
├── backend/
│   ├── worker.js          # Cloudflare Worker code
│   ├── wrangler.toml      # Worker configuration
│   └── deploy.sh          # Quick deployment script
├── docs/
│   ├── DEPLOYMENT_GUIDE.md
│   └── SCREENSHOTS/       # Add screenshots here (optional)
├── .github/
│   └── workflows/
│       └── deploy.yml     # Auto-deploy on push (optional)
├── .gitignore
├── README.md
└── LICENSE                # Add license if you want
```

---

## 🚀 Quick Start

### 1. Clone Repository
```bash
git clone https://github.com/YOUR-USERNAME/petromind.git
cd petromind
```

### 2. Deploy Backend
```bash
cd backend
npm install -g wrangler
wrangler login
wrangler secret put ANTHROPIC_API_KEY
wrangler deploy
```

### 3. Update Frontend
Edit `index.html` line ~535:
```javascript
const BACKEND_API = "YOUR-WORKER-URL";
```

### 4. Push to GitHub
```bash
git add .
git commit -m "Update backend URL"
git push
```

### 5. Enable GitHub Pages
- Go to Settings → Pages
- Source: Deploy from branch `main` → `/` (root)
- Save

Done! Your site will be live at: `https://YOUR-USERNAME.github.io/petromind`

---

## 📝 Files Description

### Frontend (`index.html`)
- Single-file HTML application
- No build process needed
- Works directly in browser
- Responsive design

### Backend (`backend/`)
- Cloudflare Worker (serverless)
- Handles API requests
- Hides API key securely
- CORS enabled

### Documentation (`docs/`)
- Complete deployment guide
- Troubleshooting tips
- Custom domain setup

---

**Developed by 0xCC**
