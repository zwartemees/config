# My config 
## Used Packages:
 | function | name | 
 | --- | ---|
 | wm: | hyprland |
 | network | gnome-control-center |
 | | rofi |
 | login manager | sddm | 
 ````terminal
 yay -S multicolor-sddm-theme otf-font-awesome otf-raleway
 ````
 sddm/default.conf to /usr/lib/sddm/sddm.conf.d/default.conf install multicolor-sddm-theme otf-font-awesome otf-raleway (in yay)
 
 ## add cursor theme change color sceem
 grub/grub naar /etc/default/grub
 dan sudo grub-mkconfig -o /boot/grub/grub.cfg
install mateoss/matter from github and follow instructions (sudo ./matter -i arch linux microsoft cog) dan:
sudo grub-mkconfig -o /boot/grub/grub.cfg
eddit grubenteries in /boot/grub/grub.cfg (this wil be wiped when grub updates) 
