# Backend - Cloudflare Worker

This folder contains the backend API for PetroMind.

## Files

- `worker.js` - Main Worker code (handles API requests)
- `wrangler.toml` - Configuration file
- `deploy.sh` - Quick deployment script

## Quick Deploy

```bash
cd backend
npm install -g wrangler
wrangler login
wrangler secret put ANTHROPIC_API_KEY
wrangler deploy
```

See `/docs/DEPLOYMENT_GUIDE.md` for detailed instructions.

---

**Developed by 0xCC**
