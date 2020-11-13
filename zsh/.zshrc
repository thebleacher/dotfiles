ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory

export EDITOR=vim

# Prevent homebrew from gathering analytics
export HOMEBREW_NO_ANALYTICS=1

source "$ZSH_DIR/secrets.zsh"

# Config
source "$ZSH_DIR/config.zsh"
source "$ZSH_DIR/functions.zsh"

# Git functions
source "$ZSH_DIR/git.zsh"

# Theme
source "$ZSH_DIR/appearance.zsh"
source "$ZSH_DIR/theme.zsh"
source "$ZSH_DIR/termsupport.zsh"

# Aliases
source "$ZSH_DIR/aliases.zsh"

# chruby
source "/usr/local/share/chruby/chruby.sh"
source "/usr/local/share/chruby/auto.sh"


# Globally disable spring
export DISABLE_SPRING="true"

# Set the maximum amount of rails threads to 1 for development purposes
export RAILS_MAX_THREADS="1"

# Base paths
export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Node Packager Manager bin path
export PATH="/usr/local/share/npm/bin:./node_modules/.bin:$PATH"

# Current working directory bin path
export PATH="bin:$PATH"

# asdf
. $(brew --prefix asdf)/asdf.sh

# Needed for unlocking secret key
export GPG_TTY=$(tty)

# Needed for git get
export GIT_PATH="$HOME/Development/repos"

# Init autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

