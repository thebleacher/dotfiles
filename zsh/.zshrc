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

# Set PATH, MANPATH, etc., for Homebrew.
[ -f "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f "/usr/local/bin/brew" ] && eval "$(/usr/local/bin/brew shellenv)"

# chruby
[ -f $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh ] && . $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
[ -f $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh ] && . $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

# asdf
[ -f $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh ] && . $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh

export ASDF_NODEJS_LEGACY_FILE_DYNAMIC_STRATEGY=latest_available

# Google Cloud SDK
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
[ -f $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc ] && source $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
[ -f $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc ] && source $HOMEBREW_PREFIX/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# Needed for unlocking secret key
export GPG_TTY=$(tty)

# Needed for git get
export GIT_PATH="$HOME/Development/repos"

# Init autojump
[ -f $HOMEBREW_PREFIX/etc/profile.d/autojump.sh ] && . $HOMEBREW_PREFIX/etc/profile.d/autojump.sh

export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

