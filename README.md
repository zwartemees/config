# My config 

## Used Packages: 
 ````terminal
 yay -S  otf-font-awesome otf-raleway sunwait hyprland kitty gnome-control-center sddm neovim eww-wayland firefox python python-pip oh-my-zsh cargo sunwait
 ````
 ## sddm theme
````terminal
 git clone https://gitlab.com/dwt1/multicolor-sddm-theme
 sudo cp -r multicolor-sddm-theme/ /usr/share/sddm/themes/
 sed 's/.*Current=.*/Current=multicolor-sddm-theme/' /usr/lib/sddm/sddm.conf.d/default.conf> /usr/lib/sddm/sddm.conf.d/default.conf
 sed 's/.*background=.*/background=png/dracula-01.png/' /usr/share/sddm/themes/multicolor-sddm-theme/theme.conf> /usr/share/sddm/themes/multicolor-sddm-theme/theme.conf
 systemctl enable sddm
````
## grub theme
````terminal
sudo grub-mkconfig -o /boot/grub/grub.cfg # detects boot entry's 
git clone https://github.com/mateosss/matter.git
sudo ./matter/matter.py
````
pick boot entry icons from https://materialdesignicons.com/
````terminal
sudo ./matter/matter -i arch linux microsoft cog #appropriate icons here in my case arch linux etc.
sudo grub-mkconfig -o /boot/grub/grub.cfg #makes the config
````
eddit grubenteries in /boot/grub/grub.cfg (this wil be wiped when grub updates) 

## GNOME-controle-center
````terminal
sudo chmod  640 /usr/share/applications/gnome-*-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-diagnostics-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-firmware-security-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wacom-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wwan-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wifi-panel.desktop
````
## add cursor theme change color sceme
https://draculatheme.com/

## wallpaper
using https://github.com/Horus645/swww

````terminal
git clone https://github.com/Horus645/swww.git
cd swww
cargo build --release
cd ..
mkdir .config/wallpaper/
mv swww/target/release/* .config/wallpaper/
rm -rf swww
export PATH=$PATH:.config/wallpaper
swww init
````

using an adapted and pre configured version of https://github.com/hexive/sunpaper
`````terminal
./.config/sunpaper/sunpaper.sh
sunpaper.sh -d
`````
## eww 
bar using rofi configs from https://github.com/SapuSeven/rofi-presets
ewwL 
config of the bar (made worse by yours truly): https://github.com/notusknot/dotfiles-nix 
config of the widgets (just stolen): https://github.com/dharmx/vile 

## NOTES!!!
the icons from the bar are not working
open .config/eww/src/yuck/bar/_bar.yuck and replace the icons 
drop:
menu:
cog:
````terminal
git clone --depth=1 https://github.com/adi1090x/rofi.git
chmod +x rofi/setup.sh
./rofi/setup.sh
````
## zsh
ZSH_THEME="sorin"

## maby? not working !!
````terminal
sudo chmod  777 /usr/share/applications/gnome-bluetooth-panel.desktop
sudo systemctl enable --now bluetooth
````
