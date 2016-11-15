#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo

sudo chown -R $USER ~/.vim/


echo Linking files
mv ~/.vimrc ~/.vimrc_old
ln -sv $PWD/vimrc ~/.vimrc

vim +PlugInstall +qall

