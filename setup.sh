#!/bin/bash
echo Install Vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/.backup ~/.vim/.swp ~/.vim/.undo
mkdir -p ~/.vim/templates
mkdir -p ~/.vim/colors
mv solarized.vim ~/.vim/colors/solarized.vim

sudo chown -R $USER ~/.vim/

echo Linking files
rm ~/.vimrc_old
mv ~/.vimrc ~/.vimrc_old
ln -sv $PWD/vimrc ~/.vimrc

rm ~/.vim/templates/comp.old
mv ~/.vim/templates/comp.cc ~/.vim/templates/comp.old
ln -sv $PWD/comp.cc ~/.vim/templates/comp.cc

rm ~/.gitconfig_old
mv ~/.gitconfig ~/.gitconfig_old
ln -sv $PWD/gitconfig ~/.gitconfig

rm ~/.tmux_comf.old
mv ~/.tmux.comf ~/.tmux_comf.old
ln -sv $PWD/tmux.comf ~/.tmux.comf

rm ~/.bash_aliases.old
mv ~/.bash_aliases ~/.bash_aliases.old
ln -sv $PWD/bash_aliases ~/.bash_aliases

rm ~/.bashrc.old
mv ~/.bashrc ~/.bashrc.old
ln -sv $PWD/bashrc ~/.bashrc

sudo chown -R $USER: ~/.vim/

vim +PlugInstall +qall

