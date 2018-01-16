#!/bin/bash
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/CrusaderW/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
