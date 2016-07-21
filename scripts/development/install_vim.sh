#!/bin/bash
sudo apt-get install vim-gtk -y
git clone https://github.com/CrusaderW/vim.git ~/.vim
make ~/.vim/bundle/vimproc.vim/
~/.vim/bundle/neobundle.vim/bin/neoinstall
#TODO: ln -s ~/.vim/.pylintrc ~/.pylintrc
cd ~/.vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.sh --clang-completer
echo "On firt start of vim ececute ':set spell spelllang=de' -> example to download a german dictionary"
echo "Press enter to continue"
read
