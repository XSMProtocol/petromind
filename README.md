# ⛽ PetroMind - AI Study Assistant

**Developed by 0xCC**

An intelligent AI tutor specialized in Water Injection module with general study assistant for all university subjects.

---

## 📦 Package Contents

### Frontend
- `petromind.html` - Main application (upload to GitHub as `index.html`)

### Backend (Cloudflare Workers)
- `worker.js` - Backend API handler
- `wrangler.toml` - Cloudflare Worker configuration
- `deploy.sh` - Quick deployment script

### Documentation
- `DEPLOYMENT_GUIDE.md` - Complete step-by-step deployment guide

---

## 🚀 Quick Start

### 1️⃣ Deploy Backend (Cloudflare Workers)

```bash
# Install Wrangler
npm install -g wrangler

# Login to Cloudflare
wrangler login

# Add your API key as secret
wrangler secret put ANTHROPIC_API_KEY
# Paste: sk-ant-api03-1c2ae9bd80884b4fbc652dbfb674f32f

# Deploy
wrangler deploy
```

Copy the Worker URL you get (e.g., `https://petromind-backend.your-name.workers.dev`)

### 2️⃣ Deploy Frontend (GitHub Pages)

1. Create new GitHub repository named `petromind`
2. Update `petromind.html`:
   - Find: `const BACKEND_API = "https://petromind-backend.YOUR_USERNAME.workers.dev";`
   - Replace `YOUR_USERNAME` with your actual Worker URL
3. Upload as `index.html` to GitHub
4. Enable GitHub Pages in repository settings
5. Your site will be live at: `https://your-username.github.io/petromind`

---

## ✨ Features

### Water Injection Module
- 4 sections covering full curriculum
- Specialized AI tutor for petroleum engineering
- Quick actions: summaries, quizzes, formulas, examples
- Industry-focused explanations

### General Study Assistant
- All university subjects (Math, Physics, Chemistry, Engineering)
- Extremely detailed explanations
- Step-by-step problem solving
- Multiple explanation methods for better understanding

### UI/UX
- Professional petroleum-themed design
- Typing animation for AI responses
- Conversation history within session
- Mobile responsive

---

## 🔒 Security

- ✅ API key hidden in Cloudflare Workers
- ✅ CORS protection enabled
- ✅ HTTPS encryption
- ✅ Rate limiting via Cloudflare

---

## 📚 Full Documentation

See `DEPLOYMENT_GUIDE.md` for:
- Detailed deployment instructions
- Custom domain setup
- Troubleshooting guide
- Monitoring and limits

---

## 🛠️ Tech Stack

- **Frontend**: Pure HTML/CSS/JavaScript
- **Backend**: Cloudflare Workers
- **AI**: Claude Sonnet 4 (Anthropic)
- **Hosting**: GitHub Pages + Cloudflare Workers

---

## 💡 Usage

1. **Water Injection Module**: Click on sections 1-4 for specialized help
2. **General Study**: Click "General Study Assistant" for any subject
3. **Quick Actions**: Use preset buttons for instant help
4. **Typing Effect**: Watch AI responses appear letter-by-letter

---

## 📊 Limits

### Cloudflare Workers (Free Tier)
- 100,000 requests/day
- 10ms CPU time per request

### GitHub Pages (Free)
- 100 GB bandwidth/month
- Unlimited public repositories

---

## 🤝 Contributing

This is a student project by 0xCC. Feel free to fork and customize for your needs!

---

## 📧 Support

Check the troubleshooting section in `DEPLOYMENT_GUIDE.md`

---

**Built with ❤️ by 0xCC**
