alias reload="source $HOME/.zshrc"

# Lazy me
alias ..="cd .."
alias l="ls"
alias la="ls -la"
alias cat="bat"

# Git
alias gs="git status"
alias gb="git branch"
alias gba="git branch -a"
alias gbvv="git branch -vv"
alias gc="git checkout"
alias gm="git merge"
alias gpu="git push"
alias gpuf="gpu --force-with-lease"
alias gpo="git push origin"
alias gpof="gpo --force-with-lease"
alias gpou="gpo -u"
alias gpl="git pull"
alias grv="git remote -v"
alias gri="git rebase -i"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsp="git stash pop"
alias gsa="git stash --include-untracked"
alias gl="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gg="git get"

# Bundle exec
alias be="bundle exec"
alias ber="be rake"
alias bet="be rspec"
alias cbet="COVERAGE=true COV=1 be rspec"

# Rails
alias PROD="RAILS_ENV=production"
alias TEST="RAILS_ENV=test"
alias DEV="RAILS_ENV=development"

alias rs="be rails s"
alias rc="be rails c"
alias rg="be rails g"

alias rr="be rails routes"

alias rdm="be rails db:migrate"
alias rdr="be rails db:migrate:reset"
alias rds="be rails db:seed"

alias rdi="rdr && rds"
alias rdsd="rdr && SEED_DEMO=1 bundle exec rails db:seed"

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Rubocop
alias cop="be rubocop"
