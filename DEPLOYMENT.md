# Deployment Instructions

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `marisha-site` (or your preferred name)
3. Owner: `marisha-mv`
4. Make sure it's set to **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

## Step 2: Push Your Code

After creating the repository, run these commands:

```bash
cd "/Users/marisha/Documents/We Conquer Media/marisha-site"
git init
git add .
git commit -m "Initial commit: Marisha website"
git branch -M main
git remote add origin https://github.com/marisha-mv/marisha-site.git
git push -u origin main
```

Or use the provided script:
```bash
./push-to-github.sh
```

## Step 3: Enable GitHub Pages

1. Go to your repository: https://github.com/marisha-mv/marisha-site
2. Click on **Settings** tab
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

## Step 4: Configure Custom Domain

1. Still in the **Pages** settings
2. Under **Custom domain**, enter: `marishalakhiani.com`
3. Check **Enforce HTTPS** (this will be available after DNS is configured)
4. Click **Save**

Note: The CNAME file has already been added to the repository.

## Step 5: Configure DNS (If using custom domain)

Go to your domain registrar and add these DNS records:

### Option 1: CNAME Record (Recommended)
- **Type**: CNAME
- **Name**: @ (or leave blank for root domain)
- **Value**: `marisha-mv.github.io`
- **TTL**: 3600 (or default)

### Option 2: A Records (Alternative)
If your registrar doesn't support CNAME for root domain, use these A records:

- **Type**: A
- **Name**: @ (or leave blank)
- **Value**: `185.199.108.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.109.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.110.153`
- **TTL**: 3600

- **Type**: A
- **Name**: @
- **Value**: `185.199.111.153`
- **TTL**: 3600

## Step 6: Wait for DNS Propagation

DNS changes can take anywhere from a few minutes to 48 hours to propagate. Once it's done:

1. GitHub will automatically detect your custom domain
2. You'll see a green checkmark in the Pages settings
3. You can enable **Enforce HTTPS**

## Verification

After DNS propagates, your site will be live at:
- https://marishalakhiani.com
- https://www.marishalakhiani.com (if you also configure www subdomain)

## Troubleshooting

- If the site doesn't load, check DNS propagation: https://www.whatsmydns.net/
- Make sure GitHub Pages is enabled and shows "Your site is live at..."
- Check that your domain is verified in GitHub Pages settings (if using custom domain)
- Verify all image paths are correct in the HTML

