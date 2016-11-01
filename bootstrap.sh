cp -r .hammerspoon ~/.hammerspoon
cp -r .karabiner.d ~/.karabiner.d
rm -rf ~/.vimrc.local ~/.vimrc.bundles.local ~/.zshrc
ln -s .vimrc.local ~/.vimrc.local
ln -s .vimrc.bundles.local ~/.vimrc.bundles.local
ln -s .zshrc ~/.zshrc
