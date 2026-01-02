# DNS Setup for marishalakhiani.com

## Quick Setup Instructions

To point `marishalakhiani.com` to your GitHub Pages site, you need to configure DNS records at your domain registrar (where you purchased the domain).

## Step 1: Enable GitHub Pages with Custom Domain

1. Go to: https://github.com/marisha-mv/marisha-site/settings/pages
2. Under **Custom domain**, enter: `marishalakhiani.com`
3. Click **Save**
4. The CNAME file is already in the repository, so GitHub will detect it automatically

## Step 2: Configure DNS Records

Go to your domain registrar's DNS management panel and add one of the following:

### Option 1: CNAME Record (Recommended - Easiest)

- **Type**: CNAME
- **Name**: @ (or leave blank for root domain)
- **Value**: `marisha-mv.github.io`
- **TTL**: 3600 (or default)

**Note**: Some registrars don't allow CNAME on the root domain (@). If that's the case, use Option 2.

### Option 2: A Records (Alternative)

If your registrar doesn't support CNAME for root domain, add these 4 A records:

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

### Option 3: www Subdomain (Optional)

If you also want `www.marishalakhiani.com` to work:

- **Type**: CNAME
- **Name**: www
- **Value**: `marisha-mv.github.io`
- **TTL**: 3600

## Step 3: Wait for DNS Propagation

DNS changes can take:
- **Minimum**: 5-10 minutes
- **Typical**: 1-2 hours
- **Maximum**: 48 hours

You can check DNS propagation status at: https://www.whatsmydns.net/#CNAME/marishalakhiani.com

## Step 4: Verify Domain in GitHub

1. Go back to: https://github.com/marisha-mv/marisha-site/settings/pages
2. Once DNS propagates, you should see a green checkmark next to your domain
3. Check the box for **Enforce HTTPS** (this may take a few more minutes to become available)

## Verification

Once everything is set up, your site will be live at:
- ✅ https://marishalakhiani.com
- ✅ https://www.marishalakhiani.com (if you configured www)

## Common Domain Registrars

### GoDaddy
1. Go to My Products → DNS
2. Add record using the values above

### Namecheap
1. Go to Domain List → Manage → Advanced DNS
2. Add record using the values above

### Google Domains
1. Go to DNS → Custom records
2. Add record using the values above

### Cloudflare
1. Go to DNS → Records
2. Add record using the values above
3. Make sure proxy is OFF (gray cloud) for GitHub Pages

## Troubleshooting

- **Domain not verified**: Wait longer for DNS propagation (can take up to 48 hours)
- **HTTPS not available**: Wait 24 hours after domain verification, then enable Enforce HTTPS
- **Site not loading**: Check DNS propagation at https://www.whatsmydns.net/
- **CNAME conflict**: Make sure you're not using both CNAME and A records for the root domain


