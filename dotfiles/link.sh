#!/bin/sh

# editorconfig
ln -sf ~/personal/mackbook-provisioning/dotfiles/.editorconfig ~/.editorconfig

# Vim
ln -sf ~/personal/mackbook-provisioning/dotfiles/.vimrc ~/.vimrc

# NeoBundle
if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
    mkdir -p ~/.vim/bundle
    git clone git@github.com:Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi

# ssh
if [ ! -d ~/.ssh ]; then
    mkdir -p ~/.ssh
    chmod 700 ~/.ssh
fi
