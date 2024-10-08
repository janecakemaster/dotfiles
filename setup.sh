#!/usr/bin/env zsh

echo 'configuring git'
cp ~/dotfiles/.gitconfig ~/.gitconfig

echo 'configuring git ignore global'
cp ~/dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo 'resetting symlinks'
rm ~/.zshrc ~/.vimrc.before.local ~/.vimrc.bundles.local  ~/.vimrc.local
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc.before.local ~/.vimrc.before.local
ln -s ~/dotfiles/.vimrc.bundles.local ~/.vimrc.bundles.local
vim +PluginInstall +qall
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local

# theme requires https://marketplace.visualstudio.com/items?itemName=GitHub.github-vscode-theme
cp ~/dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
cp ~/dotfiles/vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json"

# uncomment to run macos setup
# ~/dotfiles/.macos
