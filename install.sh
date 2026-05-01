#!/usr/bin/env sh
set -eu

mkdir -p "$HOME/.local/bin"

cp bin/i3-clipboard-daemon "$HOME/.local/bin/i3-clipboard-daemon"
cp bin/i3-clipboard-rofi "$HOME/.local/bin/i3-clipboard-rofi"
chmod +x "$HOME/.local/bin/i3-clipboard-daemon" "$HOME/.local/bin/i3-clipboard-rofi"

echo "Installed:"
echo "  $HOME/.local/bin/i3-clipboard-daemon"
echo "  $HOME/.local/bin/i3-clipboard-rofi"
echo
echo "Add to ~/.config/i3/config:"
echo "  bindsym \$mod+v exec --no-startup-id ~/.local/bin/i3-clipboard-rofi"
echo "  exec_always --no-startup-id ~/.local/bin/i3-clipboard-daemon"
