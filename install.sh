#!/bin/sh

yaourt -S --noconfirm \
	i3-{gaps,style,volume} \
	{otf,ttf}-fira-code \
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



mv ~/.zshrc{,.backup}
stow -t ~ home -v



