#!/bin/sh
# Renders og.html to ../docs/og-image.png at 1200x630 using headless Chrome.
cd "$(dirname "$0")"
"/c/Program Files/Google/Chrome/Application/chrome.exe" --headless=new --disable-gpu --hide-scrollbars \
  --allow-file-access-from-files --window-size=1200,630 --virtual-time-budget=3000 \
  --screenshot="$(pwd -W 2>/dev/null || pwd)/../docs/og-image.png" "file:///$(pwd -W 2>/dev/null || pwd)/og.html"
