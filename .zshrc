export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(gitfast zsh-syntax-highlighting heroku npm vagrant)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

export SSH_KEY_PATH="~/.ssh/id_rsa"

# aliases
alias vst='vagrant status && VBoxManage list runningvms'
alias rmf='rm -rf'
alias nr='repl.history'
alias vup='vagrant up --provision'

## git
alias gcam='git commit -a -m'
alias gum='git pull --rebase origin master' 
alias glg='git log --pretty=format:"%h %C(green)%cn%Creset %C(dim yellow)%ar%Creset %C(cyan)%s%Creset" --stat'
alias mine='glg --committer="jane"'
alias scrup='mine --since=1.day'
alias gsht='git status -s'
alias grevert='git reset --soft HEAD~1'
alias gpnew='git push --set-upstream origin $(git_current_branch)'
alias ggfpush='git push origin +$(git_current_branch)'

greset () { git reset --soft HEAD~$1 }

alias snafu='echo "reset to master" && git fetch --all && git reset --hard origin/master'

## heroku
alias hdeploymaster='git push heroku master && heroku open'
alias hlocal='foreman start web'
alias hdeploy='git push heroku heroku:master'

cmdz () { alias | grep "$1" }

relpath() { python -c "import os.path; print os.path.relpath('$1','${2:-$PWD}')" ; }

export PATH="/usr/local/bin:/usr/local/heroku/bin:$PATH"

export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## shell integration for iterm
source ~/.iterm2_shell_integration.`basename $SHELL`
# added by travis gem
[ -f /Users/janekim/.travis/travis.sh ] && source /Users/janekim/.travis/travis.sh
