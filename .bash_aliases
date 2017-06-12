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
alias gm='git checkout master'
alias gl='git log -p --find-renames'
alias gls='git log --stat=800 --decorate --find-renames'
alias gh='git checkout'
alias gn="git commit -a -m 'tmp commit'"
alias grm="git rebase -i master"

# rails
alias r='rails'
alias rc='bundle exec rails console'
alias rs='bundle exec rails server'
alias db_migrate='bundle exec rake db:migrate'
alias db_rollback='bundle exec rake db:rollback'
alias db_seed='bundle exec rake db:seed BULK=1'
alias rspec='bundle exec rspec --color --drb'
alias itamae='bundle exec itamae local -l debug'
alias rubocop='bundle exec rubocop'
alias rcheck='rspec; rubocop'

# vim
alias v="vim"
alias view="vim -R"

