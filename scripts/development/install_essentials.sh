#!/bin/bash
sudo apt-get install \
	terminology \
	build-essential \
	cmake \
	python-dev \
	tig \
	tree \
	htop \
	-y

sudo gsettings set org.gnome.desktop.default-applications.terminal exec 'terminology' 
