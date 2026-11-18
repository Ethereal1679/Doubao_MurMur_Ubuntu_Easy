#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if ! command -v flatpak >/dev/null 2>&1 \
    || ! command -v xdotool >/dev/null 2>&1 \
    || ! dpkg-query -W input-remapper >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y flatpak xdotool input-remapper
fi

flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user --assumeyes --or-update --bundle "$SCRIPT_DIR/doubao-murmur.flatpak"
flatpak run --user com.doubao.Murmur
