#!/bin/bash
sudo apt-get install vim-gtk -y
git clone https://github.com/CrusaderW/vim.git ~/.vim
make ~/.vim/bundle/vimproc.vim/
~/.vim/bundle/neobundle.vim/bin/neoinstall
ln -s ~/.vim/.pylintrc ~/.pylintrc
cd ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.sh --clang-completer
