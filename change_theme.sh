#!/bin/bash

# GitHub Profile Theme Changer
# This script helps you change the theme of your GitHub profile README.md

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== GitHub Profile Theme Changer ===${NC}\n"

# Check if README.md exists
if [ ! -f "README.md" ]; then
    echo "Error: README.md not found in current directory"
    exit 1
fi

# Show current theme
current_theme=$(grep -o 'theme=[^&"]*' README.md | head -1 | cut -d'=' -f2)
echo -e "${GREEN}Current theme:${NC} $current_theme\n"

# Popular theme options
echo "Popular theme options:"
echo "1. tokyonight - Modern purple/blue theme (current)"
echo "2. dracula - Purple and pink theme"
echo "3. radical - Colorful gradient theme"
echo "4. dark - Simple dark theme"
echo "5. github_dark - GitHub's official dark theme"
echo "6. nord - Arctic, north-bluish palette"
echo "7. monokai - Green and yellow theme"
echo "8. synthwave - Neon 80s style"
echo "9. gruvbox - Retro warm colors"
echo "10. onedark - Dark with blue accents"
echo "11. cobalt - Blue theme"
echo "12. nightowl - Dark blue theme"
echo "13. material-palenight - Material design"
echo "14. rose_pine - Rosé pine theme"
echo "15. catppuccin_mocha - Warm, pastel theme"
echo ""

# Ask for new theme
read -p "Enter new theme name (or press Enter to cancel): " new_theme

if [ -z "$new_theme" ]; then
    echo "No changes made."
    exit 0
fi

# Backup README.md
cp README.md README.md.backup
echo -e "${YELLOW}Backup created:${NC} README.md.backup"

# Replace theme in README.md
# For github-readme-stats and related services
sed -i "s/github-readme-stats\.vercel\.app\/api?username=snehayadav23&theme=[^&]*/github-readme-stats.vercel.app\/api?username=snehayadav23\&theme=$new_theme/g" README.md
sed -i "s/github-readme-stats\.vercel\.app\/api\/top-langs\/?username=snehayadav23&theme=[^&]*/github-readme-stats.vercel.app\/api\/top-langs\/?username=snehayadav23\&theme=$new_theme/g" README.md

# For streak stats
sed -i "s/nirzak-streak-stats\.vercel\.app\/\?user=snehayadav23&theme=[^&]*/nirzak-streak-stats.vercel.app\/?user=snehayadav23\&theme=$new_theme/g" README.md

# For trophies
sed -i "s/github-profile-trophy\.vercel\.app\/\?username=snehayadav23&theme=[^&]*/github-profile-trophy.vercel.app\/?username=snehayadav23\&theme=$new_theme/g" README.md

# For quotes
sed -i "s/quotes-github-readme\.vercel\.app\/api?type=horizontal&theme=[^)&]*/quotes-github-readme.vercel.app\/api?type=horizontal\&theme=$new_theme/g" README.md

# For contributor stats
sed -i "s/github-contributor-stats\.vercel\.app\/api?username=snehayadav23&limit=5&theme=[^&]*/github-contributor-stats.vercel.app\/api?username=snehayadav23\&limit=5\&theme=$new_theme/g" README.md

echo -e "${GREEN}✓ Theme changed to:${NC} $new_theme"
echo -e "${YELLOW}Note:${NC} Review the changes and commit them to GitHub to see the updates on your profile."
echo ""
echo "To preview changes: git diff README.md"
echo "To restore backup: mv README.md.backup README.md"
echo "To commit changes: git add README.md && git commit -m 'Update profile theme to $new_theme' && git push"
