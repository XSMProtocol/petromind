#!/bin/bash

# =============================================
# PetroMind Quick Deploy Script
# Developed by 0xCC
# =============================================

echo "🚀 PetroMind Quick Deploy Script"
echo "================================="
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if wrangler is installed
if ! command -v wrangler &> /dev/null; then
    echo -e "${RED}❌ Wrangler CLI not found!${NC}"
    echo -e "${YELLOW}Installing Wrangler...${NC}"
    npm install -g wrangler
fi

echo -e "${GREEN}✅ Wrangler found!${NC}"
echo ""

# Login to Cloudflare
echo -e "${BLUE}🔑 Logging in to Cloudflare...${NC}"
wrangler login

echo ""
echo -e "${BLUE}📝 Deploying Worker...${NC}"
wrangler deploy

echo ""
echo -e "${GREEN}✅ Deployment complete!${NC}"
echo ""
echo -e "${YELLOW}📋 Next steps:${NC}"
echo "1. Copy the Worker URL shown above"
echo "2. Open petromind.html"
echo "3. Replace BACKEND_API with your Worker URL"
echo "4. Upload to GitHub as index.html"
echo "5. Enable GitHub Pages"
echo ""
echo -e "${GREEN}🎉 Done! Check DEPLOYMENT_GUIDE.md for full instructions.${NC}"
