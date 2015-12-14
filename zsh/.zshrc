ZSH_DIR="$HOME/.zsh" # Path to my custom ZSH directory

export EDITOR=vim

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

# Base paths
export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:./bin:$PATH"

# Heroku Toolbelt bin path
export PATH="/usr/local/heroku/bin:$PATH"

# Node Packager Manager bin path
export PATH="/usr/local/share/npm/bin:$PATH"

# Current working directory bin path
export PATH="bin:$PATH"
