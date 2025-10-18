#!/usr/bin/env bash
set -euo pipefail

REPO="mrKiroks/terminal-translate"
BINDIR="/usr/local/bin"
BINARY="$BINDIR/translate"

# проверяем наличие зависимостей
command -v curl >/dev/null || { echo "Installing curl..."; sudo apt-get update && sudo apt-get install -y curl || brew install curl || true; }
command -v jq  >/dev/null || { echo "Installing jq...";   sudo apt-get install -y jq || brew install jq || true; }

# скачиваем свежий скрипт
echo "Downloading translate..."
sudo curl -sSL "https://raw.githubusercontent.com/$REPO/main/translate" -o "$BINARY"
sudo chmod +x "$BINARY"

echo "✅  Installed to $BINARY"
translate "Hello world"   # тестовый прогон
