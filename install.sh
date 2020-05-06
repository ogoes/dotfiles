#!/bin/sh

yay -S --noconfirm \
	i3-{gaps,style,volume} \
	scrot \
	i3lock \
	convert \
	{otf,ttf}-fira-code \
	{otf,ttf}-font-awesome{,-4} \
	kitty{,-terminfo} \
	rofi \
	nitrogen \
	compton \
	playerctl \
	pamixer \
	polybar \
	xfce4-screenshooter \
	stow \
	ranger \
	arandr \
	xdotool \
	cat



mv ~/.zshrc{,.backup}
stow -t ~ home -v



