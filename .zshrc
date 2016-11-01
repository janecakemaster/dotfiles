export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(gitfast zsh-syntax-highlighting heroku npm vagrant)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

export PATH="/usr/local/bin:/usr/local/heroku/bin:$PATH"

export SSH_KEY_PATH="~/.ssh/id_rsa"
export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox

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
alias gmz='git merge -X theirs'


## heroku
alias hdeploymaster='git push heroku master && heroku open'
alias hlocal='foreman start web'
alias hdeploy='git push heroku heroku:master'

cmdz () { alias | grep "$1" }

#moved to .zprofile
#export NVM_DIR="/Users/janekim/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

