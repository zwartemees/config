# My config 
## Used Packages:
 | function | name | 
 | --- | ---|
 | wm: | hyprland |
 | network | gnome-control-center |
 | | rofi |
 | login manager | sddm | 
 
 ````terminal
 yay -S multicolor-sddm-theme otf-font-awesome otf-raleway sunwait 
 ````
 sddm/default.conf to /usr/lib/sddm/sddm.conf.d/default.conf

 ## add cursor theme change color sceem
 grub/grub naar /etc/default/grub
 dan sudo grub-mkconfig -o /boot/grub/grub.cfg
install mateoss/matter from github and follow instructions (sudo ./matter -i arch linux microsoft cog) dan:
sudo grub-mkconfig -o /boot/grub/grub.cfg
eddit grubenteries in /boot/grub/grub.cfg (this wil be wiped when grub updates) 


## GNOME-controle-center
````terminal
sudo chmod  640 /usr/share/spplications/gnome-*-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-diagnostics-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-firmware-security-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wacom-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wwan-panel.desktop
sudo chmod  777 /usr/share/applications/gnome-wifi-panel.desktop
````
## maby?
````terminal
sudo chmod  777 /usr/share/applications/gnome-bluetooth-panel.desktop
sudo systemctl enable --now bluetooth
````
## wallpaper
using https://github.com/Horus645/swww

````terminal
git clone https://github.com/Horus645/swww.git
cargo build --release
mv swww/target/release/* .config/wallpaper/
cd
rm -rf swww
export PATH=$PATH:.config/wallpaper
swww init
````

using https://github.com/hexive/sunpaper
`````terminal
./.config/sunpaper/sunpaper.sh
sunpaper.sh -d
````

install https://github.com/SapuSeven/rofi-presets for rofi
ZSH_THEME="sorin"
