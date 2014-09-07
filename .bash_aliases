# lifehack
alias cp='cp -i'
alias less='less -R'
alias ll='ls -alh'
alias mv='mv -i'
alias rm='rm -i'
alias df="df -h"
alias du="du -sh"

# git
alias g='git'
alias gb='git branch'
alias gd='git diff'
alias gs='git status'
alias gp='git pull --all'
alias gm='git checkout master'
alias gl='git log -p'
alias gh='git checkout'
alias gn="git commit -a -m 'tmp commit'"
alias grm="git rebase -i master"

# rails
alias r='rails'
alias rc='rails console'
alias rs='rails server'
alias db_migrate='bundle exec rake db:migrate'
alias db_rollback='bundle exec rake db:rollback'
alias db_seed='bundle exec rake db:seed BULK=1'
alias db_Sower='bundle exec rake db:sower'
alias rspec='rspec --color --drb'

# svn
alias s='svn'
alias svn_resolve='svn resolve --accept working'
alias svn_revert_all='svn revert --depth infinity .'

# vim
alias v="vim"
alias lvim="vim -c \"normal '0\"" # open last file

# colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
