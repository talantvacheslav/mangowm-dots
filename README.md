# Mangowm dotfiles by bzix66

## Installation
```bash
git clone https://github.com/talantvacheslav/mangowm-dots.git
cd mangowm-dots

cp -rf cp -rf config/* ~/.config/
cp -rf scripts/ ~/.config/mango/scripts/

mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/dunst
```
spicetify setup
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
#ensure pywal cache exists before linking
mkdir -p ~/.config/spicetify/Themes/pywal
ln -sf ~/.cache/wal/spicetify-color.ini ~/.config/spicetify/Themes/pywal/color.ini
ln -sf ~/.cache/wal/spicetify-user.css ~/.config/spicetify/Themes/pywal/user.css
spicetify config current_theme pywal color_scheme pywal inject_css 1 replace_colors 1
spicetify backup apply
```

telegram setup
```
edit tdata dir in vxwmdots/scripts/telegram-theme.py if using not ayugram
launch vxwmdots/scripts/rofi-wallpaper.sh 
go to telegram
press «settings» -> «chat settings»
press 3 points right-upper -> «create new theme» -> «import existing theme»
select pywal.tdesktop-theme in tdata dir
press «keep changes» and «cancel»
```

discord(vencord) setup
```bash 
sh -c "$(curl -sS https://vencord.dev/install.sh)"
```

## Dependencies

mangowm mangobar \
foot fish rofi dunst nemo \
pywal pywalfox \
wl-clipboard cliphist grim slurp wayfreeze playerctl pamixer \
papirus-icon-theme ttf-jetbrains-mono ttf-jetbrains-mono-nerd 


## Applications binds

`super+e` nemo

`super+t` kitty

`super+w` firefox

`super+s` ayugram

`super+d` discord

`super+a` spotify

`super+shift+s` freeze region screenshot

#### another binds in mango/mangoconfs/keybinds.conf
