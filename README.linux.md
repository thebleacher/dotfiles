# Dotfiles for Linux (Ubuntu)

These dotfiles contain configuration and installation for:

* ZSH
* Dotfiles
* chruby and ruby-install
* Misc. Utilities

** This setup is intended for Ubuntu ~> 21.04

## Installation

sudo apt-get install git

sudo snap install sublime-text --classic

### Environment, ZSH, Sublime configuration

Next, clone this Git repository to your $HOME directory and initialize/update
the submodules and finally hook everything up by running the `install` script.

    git clone git://github.com/martijnbleeker/dotfiles.git $HOME/dotfiles

    cd $HOME/dotfiles && git submodule init && \
      git submodule update --recursive && ./install

This should set up the symlinks from the dotfiles directory to your `$HOME`
directory, do not remove the `dotfiles` directory.

### Install packages

xargs -a Aptfile sudo apt-get install

#### chruby and ruby-install

wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install


wget -O ruby-install-0.8.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.8.1.tar.gz
tar -xzvf ruby-install-0.8.1.tar.gz
cd ruby-install-0.8.1/
sudo make install


