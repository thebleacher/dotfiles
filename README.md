# Dotfiles

These dotfiles contain configuration and installation for:

* XCode
* Homebrew
* ITerm2
* ZSH
* Dotfiles
* Sublime
* chruby and ruby-install
* Misc. Utilities

**This setup is intended for Mac OSX ~> 10.9**

## Installation

Here is a step-by-step installation.

### XCode

Install XCode through the Mac App Store.

Run:

`xcode-select --install`

### OSX defaults

Set osx defaults.

`./.osx`

### Homebrew

Next, install [Homebrew](http://mxcl.github.com/homebrew/) using the following
command.

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After installing Homebrew, ensure permissions are correct by running the
following.

    sudo chown -R $(whoami) /usr/local
    brew update

### ITerm2

Download [ITerm2](http://www.iterm2.com/), a Terminal replacement.
Using color preset "Tango Dark" at the moment.

#### Keyboard setup

Under "(Global) Keys" add the following maps *:

- `alt + backspace` = `Send Hex Code: 17`
- `alt + <-` = `Send Escape Sequence: b`
- `alt + ->` = `Send Escape Sequence: f`

\* = Use the actual keys, not the text above.

### Git

Get the latest version of Git.

    brew install git

### ZSH

Install ZSH with the following command:

    brew install zsh

### Environment, ZSH, Sublime configuration

Next, clone this Git repository to your $HOME directory and initialize/update
the submodules and finally hook everything up by running the `install` script.

    git clone git://github.com/tombruijn/dotfiles.git $HOME/dotfiles
    cd $HOME/dotfiles && git submodule init && \
      git submodule update --recursive && ./install

This should set up the symlinks from the dotfiles directory to your `$HOME`
directory, do not remove the `dotfiles` directory.

### Sublime plugins

Install the following Sublime plugins through Sublime package control once
it is installed.

- [Package Control](http://wbond.net/sublime_packages/package_control)
- [BracketHighlighter](https:/github.com/facelessuser/BracketHighlighter)
- [Monokai Extended](https://github.com/jonschlinkert/sublime-monokai-extended.git)
- [Sass](https://github.com/nathos/sass-textmate-bundle)
- [SublimeCodeIntel](https://github.com/SublimeCodeIntel/SublimeCodeIntel.git)
- [Theme - Soda](https://github.com/buymeasoda/soda-theme.git)

### chruby and ruby-install

Install chruby by following the instructions on the
[project page](https://github.com/postmodern/chruby).

Or as lazy me would do it:

```bash
brew install chruby
brew install ruby-install
ruby-install ruby-[VERSION] ~/.rubies/ruby-[VERSION]
```

### Misc. Utilities

**Node.js platform.**

    brew install node

**Some datastores.**

    brew install postgresql mongodb redis mysql memcached

**Here are some misc. utilities.** (not necessarily required)

    brew install ack tree ffmpeg imagemagick htop-osx watch qt
