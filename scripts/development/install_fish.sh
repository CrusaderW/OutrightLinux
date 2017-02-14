#!/bin/bash
sudo apt-add-repository ppa:fish-shell/release-2 -y
sudo apt-get update
sudo apt-get install fish

git clone https://github.com/CrusaderW/dotfiles.git ~/.dotfiles && ~/.dotfiles/install.sh
