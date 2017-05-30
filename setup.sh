#!/bin/bash

echo Install Software

sudo apt-get update 

export install="
vim 
redshift 
rsibreak 
zsh 
git 
xclip
qpdfview
mpv
tmux
cmake
" 

for f in $install
do  
  sudo apt-get install $f -y 
done



echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates
mkdir -p ~/.vim/colors

sudo chown -R $USER ~/.vim/

echo Linking files
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
ln -sfv $PWD/vimrc ~/.vimrc

rm ~/.vim/templates/comp.old
mv ~/.vim/templates/comp.cc ~/.vim/templates/comp.old
ln -sfv $PWD/comp.cc ~/.vim/templates/comp.cc

rm ~/.gitconfig_old
mv ~/.gitconfig ~/.gitconfig_old
ln -sfv $PWD/gitconfig ~/.gitconfig

rm ~/.tmux_comf.old
mv ~/.tmux.comf ~/.tmux_comf.old
ln -sfv $PWD/tmux.comf ~/.tmux.comf

rm ~/.bash_aliases.old
mv ~/.bash_aliases ~/.bash_aliases.old
ln -sfv $PWD/bash_aliases ~/.bash_aliases

rm ~/.bashrc.old
mv ~/.bashrc ~/.bashrc.old
ln -sfv $PWD/bashrc ~/.bashrc


sudo chown -R $USER: ~/.vim/

vim +PlugInstall +qall
cp ~/.vim/plugged/tender.vim/colors/tender.vim ../../../colors/tender.vim 

