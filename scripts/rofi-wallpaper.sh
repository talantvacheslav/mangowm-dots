#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

mkdir -p "$WALL_DIR"

ROFI_INPUT=""
while read -r file; do
    if [ -n "$file" ]; then
        ROFI_INPUT+="${file}\0icon\x1f${WALL_DIR}/${file}\n"
    fi
done <<< "$(ls -1 "$WALL_DIR" | grep -E "\.(jpg|jpeg|png)$")"

SELECTION=$(echo -e "$ROFI_INPUT" | rofi -show-icons -dmenu -i -theme ~/.config/rofi/wall-changer.rasi)

if [ -z "$SELECTION" ]; then
    exit 1
fi

WALLPAPER="$WALL_DIR/$SELECTION"

wal -i "$WALLPAPER" -nq

kill $(pgrep dunst)
dunst &

$HOME/.local/bin/pywalfox update

ln -sf $HOME/.cache/wal/vencord-midnight.css $HOME/.config/Vencord/themes/midnight-pywal.theme.css
ln -sf $HOME/.cache/wal/gtk.css $HOME/.config/gtk-3.0/gtk.css
ln -sf $HOME/.cache/wal/dunstrc $HOME/.config/dunst/dunstrc
ln -sf  $HOME/.cache/wal/mangobar.css $HOME/.config/mangobar/style.css

python $HOME/.config/mango/scripts/telegram-theme.py

mmsg dispatch reload_config

pkill mangobar
mangobar &
