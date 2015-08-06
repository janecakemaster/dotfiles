export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(gitfast zsh-syntax-highlighting heroku)

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
alias glg='git log --pretty=format:"%h %C(green)%cn%Creset %C(dim yellow)%ar%Creset %C(cyan)%s%Creset" --stat'
alias mine='glg --committer="jane"'
alias scrup='mine --since=1.day'
alias gsub='git submodule update --recursive'
alias gsht='git status -s'
alias grevert='git reset --soft HEAD~1'
alias gpnew='git push --set-upstream origin'

greset () { git reset --soft HEAD~$1 }

alias snafu='echo "reset to master" && git fetch --all && git reset --hard origin/master'

## heroku
alias hdeploymaster='git push heroku master && heroku open'
alias hlocal='foreman start web'
alias hdeploy='git push heroku heroku:master'

cmdz () { alias | grep "$1" }

relpath() { python -c "import os.path; print os.path.relpath('$1','${2:-$PWD}')" ; }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

eval "$(direnv hook zsh)"
