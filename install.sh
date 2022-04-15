# TODO
# 1. Replace realpath with path to the root of this folder.
# 2. Accept flags for force/interactive/verbose.

mkdir -p ~/.config/i3/
ln -f -s $(realpath ./i3/config) ~/.config/i3/

mkdir -p ~/.config/i3status/
ln -f -s $(realpath ./i3status/config) ~/.config/i3status/

ln -f -s $(realpath ./rxvt/.Xresources) ~/
xrdb ~/.Xresources

ln -f -s $(realpath ./bash/.bash_profile) ~/

mkdir -p ~/.config/dunst/
ln -f -s $(realpath ./dunst/dunstrc) ~/.config/dunst/
ln -f -s $(realpath ./dunst/normal.png) ~/.config/dunst/
ln -f -s $(realpath ./dunst/critical.png) ~/.config/dunst/

mkdir -p ~/.config/rofi/
ln -f -s $(realpath ./rofi/config.rasi) ~/.config/rofi/
ln -f -s $(realpath ./rofi/hawk.rasi) ~/.config/rofi/

mkdir -p ~/.config/picom/
ln -f -s $(realpath ./picom/picom.conf) ~/.config/picom/

ln -f -s $(realpath ./mutt/.muttrc) ~/

ln -f -s $(realpath ./git/.gitconfig) ~/

mkdir -p ~/.fonts/
ln -f -s $(realpath ./fonts/*.ttf) ~/.fonts/
ln -f -s $(realpath ./fonts/*.otf) ~/.fonts/
sudo fc-cache -f -v
