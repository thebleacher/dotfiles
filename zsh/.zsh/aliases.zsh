alias reload="source $HOME/.zshrc"

# Lazy me
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias sudo="nocorrect sudo"
alias ..="cd .."
alias mou="open -a mou"
alias la="ls -la"
alias desk="cd $HOME/Desktop"
alias home="cd $HOME/"
alias dev="cd $HOME/Development/"
alias dotfiles="cd $HOME/Development/dev/dotfiles"
alias kep="cd $HOME/Development/keplar/"
alias mm="cd $HOME/Development/meukmap/"
if [[ $(uname -s) == "Darwin" ]]; then
  alias flushdns="dscacheutil -flushcache"
else
  alias flushdns="sudo /etc/init.d/nscd restart"
fi;
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

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
alias bs="bundle exec spring"
alias bsr="bs rake"
alias bst="bs rspec"
alias cbst="COV=1 bs rspec"

# Rake tasks
alias rr="be rake routes"
alias rake="noglob rake" # allows square brackts for rake task invocation

alias srr="bs rake routes"

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

alias srs="bs rails s"
alias src="bs rails c"
alias srg="bs rails g"

alias rdm="be rake db:migrate"
alias rdr="be rake db:migrate:reset"
alias rds="be rake db:seed"

alias srdm="bs rake db:migrate"
alias srdr="bs rake db:migrate:reset"
alias srds="bs rake db:seed"

alias rdi="rdr && rds"
alias rdsd="rdr && SEED_DEMO=1 bundle exec rake db:seed"
