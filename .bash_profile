export EDITOR='vi'
export PATH=$PATH:~/bin:/usr/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias hdeploy="git push heroku master"
alias dovenv="source venv/bin/activate"
alias ll="ls -alF"
alias ls="ls -G"
alias rmf="rm -rf"
alias cunix="ssh jk3316@cunix.columbia.edu"
alias clic="ssh jk3316@clic.cs.columbia.edu"
alias dev="cd ~/dev"
alias gitm="git commit -m" 
alias gitp="git push origin master"
alias personal="cd ~/dev/personal"
alias lovplugin="cd ~/dev/loverlywp/wordpress/wp-content/plugins/loverly-publisher"
PS1="\u:\W$ "
