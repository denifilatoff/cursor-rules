#!/bin/bash
# cursor-rules installer
# Installs custom Cursor IDE rules into your project

set -e

REPO_URL="https://raw.githubusercontent.com/denifilatoff/cursor-rules/main/.cursor/rules"
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Installing cursor-rules..."

# Check that we're in a git repository
if [ ! -d ".git" ]; then
    echo -e "${RED}❌ Error: Run the script from the root of a git project${NC}"
    exit 1
fi

# Create .cursor/rules directory if it doesn't exist
echo "Creating .cursor/rules directory..."
mkdir -p .cursor/rules

# Function to download a file
download_rule() {
    local filename=$1
    local url="${REPO_URL}/${filename}"
    
    echo "⬇️  Downloading ${filename}..."
    if curl -sf -o ".cursor/rules/${filename}" "${url}"; then
        echo -e "${GREEN}✅ ${filename} installed${NC}"
    else
        echo -e "${RED}❌ Error downloading ${filename}${NC}"
        return 1
    fi
}

# Download rules
download_rule "mkdocs-init.mdc"
download_rule "mkdocs-examples.mdc"
download_rule "readme-update.mdc"
download_rule "adr-create.mdc"

echo ""
echo -e "${GREEN} cursor-rules successfully installed!${NC}"
echo ""
echo -e "${YELLOW} Restart Cursor --> Open a new chat${NC}"
echo ""
echo -e "${YELLOW} Usage:${NC}"
echo "  @mkdocs-init create MkDocs setup for my project"
echo "  @mkdocs-examples help include examples in documentation"
echo "  @readme-update help to update readme.md"
echo "  @adr-create Paste architecture decision description"
