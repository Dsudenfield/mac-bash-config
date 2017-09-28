parse_git_branch() {
  MYPWD=`pwd`
  if [[ "$MYPWD" =~ "/Volumes/" ]]; then
    echo ""
  else
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
  fi
}

PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\$PWD\$(parse_git_branch)\[\033[00m\]\n\$ "
#PS1='\[\033[00;33m\]\u\[\033[00;00m\]@\[\033[00;32m\]\h\[\033[00;35m\]\[\033[01;37m\]\w$(parse_git_branch)\[\033[00m\]\n\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export LSCOLORS=GxFxCxDxBxegedabagaced
alias a='cat ~/.bash_profile'
alias ls='ls -la'
alias bp='vim ~/.bash_profile'
if [ -f ~/.bashrc ]; then
    alias bp-reload='source ~/.bashrc'
    echo 'reloading from .bashrc'
else
    alias bp-reload='source ~/.bash_profile'
    echo 'reloading from .bash_profile'
fi
alias gp='git pull'
alias push='git push'
alias gaa='git add -A'
alias gm="git commit -m\""
alias gam='git commit -am'
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'
alias gb='git branch'

alias pa='php artisan'
alias pamr='php artisan migrate:refresh'

alias v='cd /vagrant'
alias si='cd ~/Sites'
alias li='cd ~/Sites/a17-dev-server/projects/lilly'
alias ve='cd ~/Sites/a17-dev-server/projects/verizon-digital-future'
alias arpc='cd ~/Sites/a17-dev-server/projects/arp-canada'
alias arpu='cd ~/Sites/arp-us'
alias al='cd ~/Sites/a17-dev-server/projects/alipes-laravel'
alias a17='cd ~/Sites/a17-dev-server'
alias el='cd ~/Sites/a17-dev-server/projects/elanco-affiliate-contentful'
alias bh='cd ~/Sites/a17-dev-server/projects/blue-harvest'
alias ol='cd ~/Sites/a17-dev-server/projects/olympus'
alias mos='cd ~/Sites/a17-dev-server/projects/eie-storybook'
alias hatch='cd ~/Sites/a17-dev-server/projects/hatch-for-hunger'
alias al-17='cd ~/Sites/a17-dev-server/projects/alipes-17-laravel'

alias vu='vagrant up'
alias vh='vagrant halt'
alias vs='vagrant ssh'

alias topmem='top -o MEM'
alias topcpu='top -u'
