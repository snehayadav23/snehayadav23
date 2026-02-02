#!/bin/bash

# GitHub Profile Theme Changer
# This script helps you change the theme of your GitHub profile README.md

# Configuration
USERNAME='snehayadav23'

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== GitHub Profile Theme Changer ===${NC}\n"

# Check if README.md exists
if [ ! -f "README.md" ]; then
    echo -e "${RED}Error:${NC} README.md not found in current directory"
    exit 1
fi

# Show current theme
current_theme=$(grep -o 'theme=[^&"]*' README.md | head -1 | cut -d'=' -f2)
if [ -z "$current_theme" ]; then
    echo -e "${YELLOW}Warning:${NC} No theme detected in README.md\n"
else
    echo -e "${GREEN}Current theme:${NC} $current_theme\n"
fi

# Popular theme options
echo "Popular theme options:"
themes=("tokyonight:Modern purple/blue theme" 
        "dracula:Purple and pink theme" 
        "radical:Colorful gradient theme"
        "dark:Simple dark theme"
        "github_dark:GitHub's official dark theme"
        "nord:Arctic, north-bluish palette"
        "monokai:Green and yellow theme"
        "synthwave:Neon 80s style"
        "gruvbox:Retro warm colors"
        "onedark:Dark with blue accents"
        "cobalt:Blue theme"
        "nightowl:Dark blue theme"
        "material-palenight:Material design"
        "rose_pine:Rosé pine theme"
        "catppuccin_mocha:Warm, pastel theme")

counter=1
for theme_info in "${themes[@]}"; do
    theme_name=$(echo "$theme_info" | cut -d':' -f1)
    theme_desc=$(echo "$theme_info" | cut -d':' -f2)
    if [ "$theme_name" = "$current_theme" ]; then
        echo -e "$counter. $theme_name - $theme_desc ${GREEN}(current)${NC}"
    else
        echo "$counter. $theme_name - $theme_desc"
    fi
    ((counter++))
done
echo ""

# Ask for new theme
read -p "Enter new theme name (or press Enter to cancel): " new_theme

if [ -z "$new_theme" ]; then
    echo "No changes made."
    exit 0
fi

# Validate theme name (alphanumeric, underscore, hyphen only)
if ! [[ "$new_theme" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo -e "${RED}Error:${NC} Invalid theme name. Use only letters, numbers, hyphens, and underscores."
    exit 1
fi

# Backup README.md
if [ -f "README.md.backup" ]; then
    backup_file="README.md.backup.$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}Note:${NC} Existing backup found, creating timestamped backup"
    cp README.md "$backup_file"
    echo -e "${YELLOW}Backup created:${NC} $backup_file"
else
    cp README.md README.md.backup
    echo -e "${YELLOW}Backup created:${NC} README.md.backup"
fi

# Replace theme in README.md
# For github-readme-stats and related services
sed -i "s/github-readme-stats\.vercel\.app\/api?username=$USERNAME&theme=[^&]*/github-readme-stats.vercel.app\/api?username=$USERNAME\&theme=$new_theme/g" README.md
sed -i "s/github-readme-stats\.vercel\.app\/api\/top-langs\/?username=$USERNAME&theme=[^&]*/github-readme-stats.vercel.app\/api\/top-langs\/?username=$USERNAME\&theme=$new_theme/g" README.md

# For streak stats
sed -i "s/nirzak-streak-stats\.vercel\.app\/\?user=$USERNAME&theme=[^&]*/nirzak-streak-stats.vercel.app\/?user=$USERNAME\&theme=$new_theme/g" README.md

# For trophies
sed -i "s/github-profile-trophy\.vercel\.app\/\?username=$USERNAME&theme=[^&]*/github-profile-trophy.vercel.app\/?username=$USERNAME\&theme=$new_theme/g" README.md

# For quotes
sed -i "s/quotes-github-readme\.vercel\.app\/api?type=horizontal&theme=[^)&]*/quotes-github-readme.vercel.app\/api?type=horizontal\&theme=$new_theme/g" README.md

# For contributor stats
sed -i "s/github-contributor-stats\.vercel\.app\/api?username=$USERNAME&limit=5&theme=[^&]*/github-contributor-stats.vercel.app\/api?username=$USERNAME\&limit=5\&theme=$new_theme/g" README.md

echo -e "${GREEN}✓ Theme changed to:${NC} $new_theme"
echo -e "${YELLOW}Note:${NC} Review the changes and commit them to GitHub to see the updates on your profile."
echo ""
echo "To preview changes: git diff README.md"
echo "To restore backup: mv README.md.backup README.md"
echo "To commit changes: git add README.md && git commit -m 'Update profile theme to $new_theme' && git push"
