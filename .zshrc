# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

bindkey -v

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

export EDITOR=vim

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias hdeploy="git push heroku master"
alias rmf="rm -rf"
alias cunix="ssh jk3316@cunix.columbia.edu"
alias clic="ssh jk3316@clic.cs.columbia.edu"
alias personal="cd ~/dev/personal"
alias lovplugin="cd ~/dev/loverlywp/wordpress/wp-content/plugins/loverly-wp-plugin"
alias grel="grunt clean && grunt copy"
alias lovssh="ssh -t jane@162.209.50.185 'cd /var/www/test_blog/ ; bash'"
alias dev="cd ~/dev"
alias love="open /Applications/love.app/Contents/MacOS/love"
alias makelove="zip -r game.love *"
alias school="cd ~/Dropbox/Columbia/2014spring"
alias response="~/Dropbox/Columbia/2014spring/postmodern-poetries/responses/create.sh"
alias doctomd="~/convert.sh"
alias docxtomd="~/convertx.sh"
alias mla="~/md-to-mla.sh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Homebrew command tab completion
fpath=($HOME/.zsh/func $fpath)
typeset -U fpath

# Add Android path
ANDROID="${HOME}/dev/android/adt-bundle-mac-x86_64-20131030"
export PATH="${ANDROID}/sdk/build-tools/android-4.4:${ANDROID}/sdk/tools:${ANDROID}/sdk/platform-tools:$PATH"
