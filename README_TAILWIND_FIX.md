# Tailwind Fix Patch

Your CSS entrypoint should use `@tailwind` directives, not `@import "tailwindcss";`.
This patch provides a correct `application.tailwind.css`, switches the layout to
`stylesheet_link_tag "application"`, and ensures the Tailwind watcher runs.

## Apply

From your Rails app root:
```bash
# Optional backups
cp app/assets/stylesheets/application.tailwind.css app/assets/stylesheets/application.tailwind.backup.css 2>/dev/null || true
cp app/views/layouts/application.html.erb app/views/layouts/application.backup.html.erb 2>/dev/null || true
cp Procfile.dev Procfile.dev.backup 2>/dev/null || true

# Unzip patch
unzip ../tailwind_fix_patch.zip -d .

# Restart dev
bin/dev
```

## Verify

- `app/assets/stylesheets/application.tailwind.css` contains `@tailwind base; @tailwind components; @tailwind utilities;`
- Layout uses `<%= stylesheet_link_tag "application" %>`
- `bin/dev` spawns a `css` process running `tailwindcss:watch`

If you did **not** install Tailwind yet, run:
```bash
rails css:install:tailwind
```
