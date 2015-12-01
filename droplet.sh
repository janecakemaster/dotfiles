# add new user first
# instructions: https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04
apt-get update

# install zsh
apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install node
# ref: https://github.com/nodesource/distributions#debinstall
sudo apt-get install -y build-essential
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash *
sudo apt-get install -y nodejs

# setup dotfiles
cat .zshrc >> ~/.zshrc
