#!/bin/bash

# Script to push Marisha website to GitHub
# Make sure you've created the repository at https://github.com/marisha-mv/marisha-site first

echo "🚀 Pushing to GitHub..."

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    git branch -M main
fi

# Add all files
git add .

# Commit if there are changes
if ! git diff --staged --quiet; then
    git commit -m "Update Marisha website"
    echo "✅ Changes committed"
else
    echo "ℹ️  No changes to commit"
fi

# Add remote (if not already added)
git remote remove origin 2>/dev/null
git remote add origin https://github.com/marisha-mv/marisha-site.git

# Push to GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next steps:"
    echo "1. Go to https://github.com/marisha-mv/marisha-site/settings/pages"
    echo "2. Enable GitHub Pages (select 'main' branch and '/ (root)' folder)"
    echo "3. (Optional) Add your custom domain"
    echo "4. (Optional) Configure DNS with your domain registrar"
    echo ""
    echo "See DEPLOYMENT.md for detailed instructions."
else
    echo "❌ Failed to push. Make sure:"
    echo "   - You've created the repository at https://github.com/marisha-mv/marisha-site"
    echo "   - You're authenticated with GitHub"
    echo "   - The repository name matches exactly: marisha-site"
fi

