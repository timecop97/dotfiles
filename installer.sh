#!/bin/bash

#script to setup a bunch of stuff. run this as a user with superuser privileges

$dfpath = pwd

pacman -S git picom ranger firefox i3-gaps htop nano alsa pulseaudio alsa-utils code termite

git clone https://aur.archlinux.org/yay-git.git
cd ~
cd yay-git
makepkg -si
cd ..
rm -rf yay-git
#you now have yay
cd $dfpath
#go back to dotfiles

yay -S polybar wal 6cord spotifyd spotify-tui otf-overpass

ln -s bashrc ~/.bashrc

mkdir ~/,config
mkdir ~/.config/i3

ln -s i3/config ~/.config/i3/config

mkdir ~/.config/polybar

ln -s polybar/config ~/.config/polybar/config
ln -s polybar/launch.sh ~/.config/polybar/launch.sh

mkdir ~/.config/picom

ln -s picom/picom.conf ~/.config/picom/picom.conf

