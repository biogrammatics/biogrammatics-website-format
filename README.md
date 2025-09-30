# BioGrammatics Rails Overlay

This is a drop-in overlay to reproduce the look-and-feel of your Wix sandbox page in Rails with Tailwind + Hotwire.

## Quick Start

```bash
# 1) Create a fresh Rails app with Tailwind and esbuild
rails new biogrammatics-site -j esbuild -c tailwind
cd biogrammatics-site

# 2) Unzip the overlay at the project root (it will add/replace files)
unzip ../biogrammatics_rails_overlay.zip -d .

# 3) Install and run
bundle install
bin/rails db:create
bin/dev
```

Then visit http://localhost:3000

## Notes
- Update the hero background image in `app/views/home/_hero.html.erb`.
- Replace placeholder copy in About/Services/Press, and thumbnails in Projects.
- Set the destination email in `app/mailers/contact_mailer.rb` (`default to:`).
- If using importmap instead of esbuild, you can ignore esbuild-specific steps.
