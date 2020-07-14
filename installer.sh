
#!/bin/bash
#script to setup a bunch of stuff. run this as a user with superuser privileges
DFPATH=$(pwd)

sudo pacman -S git --needed
sudo pacman -S picom --needed
sudo pacman -S ranger --needed
sudo pacman -S firefox --needed
sudo pacman -S i3-gaps --needed
sudo pacman -S htop --needed
sudo pacman -S nano --needed
sudo pacman -S alsa --needed
sudo pacman -S pulseaudio --needed
sudo pacman -S alsa-utils --needed
sudo pacman -S code --needed
sudo pacman -S termite --needed
sudo pacman -S xorg-utils --needed
sudo pacman -S xorg-server --needed
sudo pacman -S lightdm --needed
sudo pacman -S base-devel --needed
sudo pacman -S trash-cli --needed
sudo pacman -S xorg --needed

if ! command -v yay &> /dev/null
then
	git clone https://aur.archlinux.org/yay-git.git
	cd yay-git
	makepkg -si
	cd ..
	rm -rf yay-git
	#you now have yay
	cd $dfpath
	#go back to dotfiles
	yay -S polybar python-pywal 6cord spotifyd spotify-tui otf-overpass lightdm-slick-greeter --needed
fi

ln -sf $DFPATH/bashrc ~/.bashrc
mkdir ~/.config
mkdir ~/.config/i3
echo $DFPATH
ln -sf $DFPATH/i3/config ~/.config/i3/config
ln -sf $DFPATH/i3/back.jpg ~/.config/i3/back.jpg

mkdir ~/.config/polybar
ln -sf $DFPATH/polybar/config ~/.config/polybar/config
ln -sf $DFPATH/polybar/launch.sh ~/.config/polybar/launch.sh
mkdir ~/.config/picom
ln -sf $DFPATH/picom/picom.conf ~/.config/picom/picom.conf
ln -sf $DFPATH/xinitrc ~/.xinitrc
