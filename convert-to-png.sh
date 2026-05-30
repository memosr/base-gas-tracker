#!/usr/bin/env bash
# Convert SVG assets to PNG using rsvg-convert
# Install: brew install librsvg

set -e

cd "$(dirname "$0")/public"

echo "Converting SVGs to PNGs..."

rsvg-convert -w 1024 -h 1024 icon.svg -o icon.png
echo "  icon.png (1024x1024)"

rsvg-convert -w 200 -h 200 splash.svg -o splash.png
echo "  splash.png (200x200)"

rsvg-convert -w 1200 -h 630 hero.svg -o hero.png
echo "  hero.png (1200x630)"

rsvg-convert -w 1200 -h 630 og.svg -o og.png
echo "  og.png (1200x630)"

echo "Done. PNGs written to public/"
