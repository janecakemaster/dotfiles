export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

export SSH_KEY_PATH="~/.ssh/id_rsa"

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
alias gpnew='git push --set-upstream origin'
greset () { git reset --soft HEAD~$1 }

alias snafu='echo "reset to master" && git fetch --all && git reset --hard origin/master'

cmdz () { alias | grep "$1" }

relpath() { python -c "import os.path; print os.path.relpath('$1','${2:-$PWD}')" ; }
