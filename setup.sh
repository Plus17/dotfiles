#!/bin/bash

if ! command -v stow &> /dev/null
then
    echo "GNU Stow is not installed"
    exit
fi

if ! command -v alacricitty &> /dev/null
then
    echo "alacricitty is not installed"
    exit
fi

if ! command -v nvim &> /dev/null
then
    echo "nvim is not installed"
    exit
fi

if ! command -v tmux &> /dev/null
then
    echo "tmux is not installed"
    exit
fi

if ! command -v zsh &> /dev/null
then
    echo "zsh is not installed"
    exit
fi

echo 'Stowing dotfiles...'

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
    stow zshrc
else
    stow zshrc
fi

if [ -f ~/.p10k.zsh ]; then
    mv ~/.p10k.zsh ~/.p10k.zsh.bak
    stow p10k
else
    stow p10k
fi

if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
    stow tmux
else
    stow tmux
fi

if [ -f ~/alacricitty.yml ]; then
    mv ~/alacricitty.yml ~/alacricitty.yml.bak
    stow alacricitty
else
    stow alacricitty
fi

if [ -f ~/.config/lvim/config.lua ]; then
    mv ~/.config/lvim/config.lua ~/.config/lvim/config.lua.bak
    stow .config/lvim
else
    stow .config/lvim
fi

stow gitignore_global
