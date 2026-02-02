# GitHub Profile Theme Guide

This guide explains how to change the theme of your GitHub profile README.

## Current Theme
Your profile currently uses the **tokyonight** theme for a consistent, modern look.

## How to Change Themes

Your profile uses several dynamic components that support themes. To change the theme, simply replace `theme=tokyonight` with your preferred theme in the README.md file.

### Components Using Themes

1. **GitHub Trophies** (Line 31)
   ```markdown
   ![](https://github-profile-trophy.vercel.app/?username=snehayadav23&theme=tokyonight&...)
   ```

2. **GitHub Stats** (Line 33)
   ```markdown
   ![](https://github-readme-stats.vercel.app/api?username=snehayadav23&theme=tokyonight&...)
   ```

3. **Streak Stats** (Line 34)
   ```markdown
   ![](https://nirzak-streak-stats.vercel.app/?user=snehayadav23&theme=tokyonight&...)
   ```

4. **Top Languages** (Line 35)
   ```markdown
   ![](https://github-readme-stats.vercel.app/api/top-langs/?username=snehayadav23&theme=tokyonight&...)
   ```

5. **Random Dev Quote** (Line 39)
   ```markdown
   ![](https://quotes-github-readme.vercel.app/api?type=horizontal&theme=tokyonight)
   ```

6. **Top Contributed Repo** (Line 42)
   ```markdown
   ![](https://github-contributor-stats.vercel.app/api?username=snehayadav23&limit=5&theme=tokyonight&...)
   ```

## Available Themes

### Popular Themes for GitHub Stats, Streak Stats, and Top Languages:
- `default` - Classic GitHub style
- `dark` - Dark theme
- `radical` - Colorful gradient theme
- `tokyonight` - Modern purple/blue theme (current)
- `dracula` - Purple and pink theme
- `monokai` - Green and yellow theme
- `gruvbox` - Retro warm colors
- `onedark` - Dark with blue accents
- `cobalt` - Blue theme
- `synthwave` - Neon 80s style
- `highcontrast` - High contrast for accessibility
- `nightowl` - Dark blue theme
- `algolia` - Blue and purple theme
- `great-gatsby` - Purple theme
- `ocean_dark` - Ocean inspired dark theme
- `city_lights` - Dark blue/cyan theme
- `github_dark` - GitHub's dark mode theme
- `discord_old_blurple` - Discord's old purple theme
- `nord` - Arctic, north-bluish color palette
- `material-palenight` - Material design inspired
- `rose_pine` - Rosé pine theme
- `catppuccin_mocha` - Warm, pastel theme
- `transparent` - Transparent background
- `ambient_gradient` - Colorful gradient

### Themes for GitHub Trophies:
- `flat` - Flat design
- `onedark` - Dark with blue accents
- `gruvbox` - Retro warm colors
- `dracula` - Purple and pink
- `monokai` - Green and yellow
- `chalk` - Chalkboard style
- `nord` - Arctic theme
- `alduin` - Dark red theme
- `darkhub` - GitHub dark
- `juicyfresh` - Fresh and colorful
- `buddhism` - Peaceful theme
- `oldie` - Vintage style
- `radical` - Colorful gradient
- `onestar` - Starry theme
- `discord` - Discord style
- `algolia` - Blue and purple
- `gitdimmed` - Dimmed GitHub style
- `tokyonight` - Modern purple/blue (current)
- `matrix` - Matrix green
- `apprentice` - Dark with muted colors
- `dark_dimmed` - Dimmed dark theme
- `dark_lover` - Pure dark theme

## Quick Theme Change Examples

### Change to Dracula Theme:
Replace all instances of `theme=tokyonight` with `theme=dracula`

### Change to Radical Theme:
Replace all instances of `theme=tokyonight` with `theme=radical`

### Change to Nord Theme:
Replace all instances of `theme=tokyonight` with `theme=nord`

## Tips for Choosing a Theme

1. **Consistency**: Use the same theme across all components for a cohesive look
2. **Contrast**: Choose themes with good contrast for readability
3. **Personal Style**: Pick a theme that matches your personality
4. **Accessibility**: Consider using `highcontrast` or `vision-friendly-dark` if needed

## Testing Your Changes

After changing themes in your README.md:
1. Commit and push your changes to GitHub
2. View your profile at https://github.com/snehayadav23
3. The changes should appear immediately (may take a few seconds for images to refresh)
4. If images don't update, try refreshing your browser or clearing cache

## Resources

- [GitHub Readme Stats Themes](https://github.com/anuraghazra/github-readme-stats/blob/master/themes/README.md)
- [GitHub Profile Trophy Themes](https://github.com/ryo-ma/github-profile-trophy#-themes)
- [Streak Stats Themes](https://github.com/DenverCoder1/github-readme-streak-stats#-themes)

---
**Note**: Some theme names may vary slightly between different components. If a theme doesn't work, check the component's documentation for available options.
