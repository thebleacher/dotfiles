alias reload="source $HOME/.zshrc"

# Lazy me
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias sudo="nocorrect sudo"
alias ..="cd .."
alias mou="open -a mou"
alias l="ls"
alias la="ls -la"
alias desk="cd $HOME/Desktop"
alias home="cd $HOME/"
alias dev="cd $HOME/Development/"
alias dotfiles="cd $HOME/Development/dev/dotfiles"
alias kep="cd $HOME/Development/keplar/"
alias exp="cd $HOME/Development/experiments/"
alias mm="cd $HOME/Development/meukmap/"
if [[ $(uname -s) == "Darwin" ]]; then
  alias flushdns="dscacheutil -flushcache"
else
  alias flushdns="sudo /etc/init.d/nscd restart"
fi;
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Git
alias g="open -a gitx ."
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gm="git merge"
alias gpu="git push"
alias gpo="git push origin"
alias gpl="git pull"
alias grv="git remote -v"
alias gri="git rebase -i"
alias gsl="git stash list"
alias gsd="git stash drop"
alias gsp="git stash pop"
alias gsa="git stash --include-untracked"

# Bundle exec
alias be="bundle exec"
alias ber="be rake"
alias bet="be rspec"
alias cbet="COV=1 be rspec"

#Bundle exec spring
alias s="spring"
alias sr="s rake"
alias st="s rspec"
alias cbst="COV=1 s rspec"

# Rake tasks
alias rr="be rake routes"
alias rake="noglob rake" # allows square brackts for rake task invocation

alias srr="s rake routes"

# Middleman
alias ms="be middleman s"
alias mb="be middleman b"

# Rails
alias PROD="RAILS_ENV=production"
alias TEST="RAILS_ENV=test"
alias DEV="RAILS_ENV=development"

alias rs="be rails s"
alias rc="be rails c"
alias rg="be rails g"

alias srs="s rails s"
alias src="s rails c"
alias srg="s rails g"

alias rdm="be rake db:migrate"
alias rdr="be rake db:migrate:reset"
alias rds="be rake db:seed"

alias srdm="s rake db:migrate"
alias srdr="s rake db:migrate:reset"
alias srds="s rake db:seed"

alias rdi="rdr && rds"
alias rdsd="rdr && SEED_DEMO=1 bundle exec rake db:seed"

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# Rubocop
alias cop="be rubocop"
