#!/usr/bin/env bash
cd ~
rm ~/.zshrc ~/.vimrc ~/.vimrc.before.local ~/.vimrc.bundles.local ~/.vimrc.local

# cp ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json
cp ~/dotfiles/hammerspoon.lua ~/.hammerspoon/init.lua
cp ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc.bundles.local ~/.vimrc.bundles.local
ln -s ~/dotfiles/.vimrc.before.local ~/.vimrc.before.local
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local