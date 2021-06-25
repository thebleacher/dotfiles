# Dotfiles for Linux (Ubuntu)

These dotfiles contain configuration and installation for:

* ZSH
* Dotfiles
* chruby and ruby-install
* Misc. Utilities

** This setup is intended for Ubuntu ~> 21.04

## Installation

sudo apt-get install build-essential procps curl file git ruby

sudo snap install sublime-text --classic

### Environment, ZSH, Sublime configuration

Next, clone this Git repository to your $HOME directory and initialize/update
the submodules and finally hook everything up by running the `install` script.

    git clone git://github.com/martijnbleeker/dotfiles.git $HOME/dotfiles

    cd $HOME/dotfiles && git submodule init && \
      git submodule update --recursive && ./install

This should set up the symlinks from the dotfiles directory to your `$HOME`
directory, do not remove the `dotfiles` directory.

### Homebrew

Next, install [Homebrew](http://mxcl.github.com/homebrew/) using the following
command.

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After install Homebrew, install packages

    brew update
    brew bundle --file=Brewfile_linux

### ZSH

Add the homebrew zsh to available shells and set it as the default shell

    command -v zsh | sudo tee -a /etc/shells
    sudo chsh -s "$(command -v zsh)"

### chruby and ruby-install

Install chruby by following the instructions on the
[project page](https://github.com/postmodern/chruby).


```bash
ruby-install ruby-[VERSION] ~/.rubies/ruby-[VERSION]
```

### Vim

#### Vundle
```bash
vim +:PluginInstall
```
