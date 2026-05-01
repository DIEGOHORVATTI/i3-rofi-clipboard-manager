# i3 Rofi Clipboard Manager

A small clipboard history manager for i3/X11 using `xclip` and `rofi`.

It has two parts:

- `i3-clipboard-daemon`: watches the X11 clipboard and stores recent text items.
- `i3-clipboard-rofi`: opens a `rofi` picker to choose an item and copy it back to the clipboard.

It is intentionally simple and works well in lightweight i3 setups.

## Requirements

- i3
- X11
- Python 3
- rofi
- xclip

On Ubuntu/Debian:

```sh
sudo apt install rofi xclip
```

## Install

```sh
./install.sh
```

This installs:

```sh
~/.local/bin/i3-clipboard-daemon
~/.local/bin/i3-clipboard-rofi
```

## i3 Config

Add this to `~/.config/i3/config`:

```i3
bindsym $mod+v exec --no-startup-id ~/.local/bin/i3-clipboard-rofi
exec_always --no-startup-id ~/.local/bin/i3-clipboard-daemon
```

Reload i3:

```sh
i3-msg reload
```

## Usage

Copy text normally with `Ctrl+C`.

Open the clipboard history with:

```text
Super+V
```

In the rofi menu:

- `Enter`: copy selected item back to clipboard
- `Alt+Enter`: delete selected item
- `Ctrl+Delete`: clear history

After selecting an item, paste with `Ctrl+V`.

## Data Location

Clipboard history is stored at:

```sh
~/.local/share/i3-clipboard/history.json
```

## Notes

This handles text clipboard history only. It does not store images or binary clipboard data.
