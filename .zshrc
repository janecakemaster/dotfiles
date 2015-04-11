# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# theme
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=~/dotfiles/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vagrant)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#source $(brew --prefix nvm)/nvm.sh


# aliases
alias vst='vagrant status && VBoxManage list runningvms'
alias rmf='rm -rf'
alias nr='repl.history'

## git
alias gcam='git commit -a -m'
alias gum='git pull --rebase origin master' 
alias glg='git log --pretty=format:"%h %C(dim yellow)%ar%Creset %C(cyan)%s%Creset" --stat'
alias mine='glg --committer="jane"'
alias scrup='mine --since=1.day'
alias gsub='git submodule update --recursive'
alias gsht='git status -s'
alias grevert='git reset --soft HEAD~1'
greset () { git reset --soft HEAD~$1 }

alias snafu='echo "reset to master" && git fetch --all && git reset --hard origin/master'

cmdz () { alias | grep "$1" }

relpath() { python -c "import os.path; print os.path.relpath('$1','${2:-$PWD}')" ; }
