# Brand Theme Patch (Colors & Typography)

This patch aligns your Rails site to the Wix sandbox look using:
- Dark blue-gray background
- Emerald accent
- Geometric display font for headings (Space Grotesk)
- Inter for body copy
- Defined type ramp and spacing

## Apply

From your Rails app root:

```bash
# 1) Back up your current files if needed.
cp tailwind.config.js tailwind.config.backup.js
cp app/views/layouts/application.html.erb app/views/layouts/application.backup.html.erb
cp app/views/home/_hero.html.erb app/views/home/_hero.backup.html.erb

# 2) Unzip the patch over your project
unzip ../brand_theme_patch.zip -d .
```

Then re-run your dev server:
```bash
bin/dev
```

## Notes
- Colors live in `brand.*` tokens in `tailwind.config.js`.
- Headings use `font-display`. Body uses `font-sans`.
- Use classes: `text-hero`, `text-h2`, `text-h3`, `text-body`, `text-small`.
