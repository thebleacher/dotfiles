# Dotfiles for Linux (Ubuntu)

These dotfiles contain configuration and installation for:

* ZSH
* Dotfiles
* chruby and ruby-install
* Misc. Utilities

** This setup is intended for Ubuntu ~> 21.04

## Installation

sudo apt-get install \
  build-essential procps curl file git ruby vim zsh git tig mercurial htop mc \
  memcached default-mysql-server postgresql redis sqlite openssl  ack autojump \
  tree unrar-free procps wget imagemagick optipng jpegoptim ffmpeg youtube-dl \
  flac par2 gpg

sudo snap install sublime-text --classic

## bat

At the time of writing this, bat is not available in the stable APT repo of Debian.

Alternative install method is to grab the `.deb` package from [here](https://github.com/sharkdp/bat) and install with `dpkg -i bat_0.18.1_amd64.deb`.

## ASDF

From their [website](https://asdf-vm.com/#/core-manage-asdf?id=asdf)

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
```

## chruby

From their [github](https://github.com/postmodern/chruby#install):

```
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install
```

## ruby-install

From their [github](https://github.com/postmodern/ruby-install#install)
```
wget -O ruby-install-0.8.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.8.1.tar.gz
tar -xzvf ruby-install-0.8.1.tar.gz
cd ruby-install-0.8.1/
sudo make install
```

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
