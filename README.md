# Dotfiles

These dotfiles contain configuration and installation for:

* XCode
* Homebrew
* ITerm2
* ZSH
* Dotfiles
* Sublime
* VIM (and MacVIM)
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

    ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

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
- [RSpec](git clone git://github.com/SublimeText/RSpec.git)
- [Sass](https://github.com/nathos/sass-textmate-bundle)
- [CoffeeScript](https://github.com/Xavura/CoffeeScript-Sublime-Plugin)
- [AngularJS (CoffeeScript)](https://github.com/EastPoint/Sublime-AngularJS-Coffee-Completions)
- [eco](https://github.com/davidjrice/sublime-eco)
- [GitGutter](https://github.com/jisaacks/GitGutter)
- [JsFormat](https://github.com/jdc0589/JsFormat)
- [Theme - Phoenix](https://github.com/netatoo/phoenix-theme) - Dark Blue
  - Syntax highlighting: __Default/Twilight.tmTheme__

### VIM

Mac OSX comes installed with an old version of VIM.
Replace this installation with a recent version of VIM through Homebrew.

    brew install --with-features=huge --enable-interp=lua,ruby,perl,python \
      https://raw.github.com/telemachus/homebrew/vim-mine/Library/Formula/vim.rb

### MacVIM

Next, install MacVIM as well.

    brew install mercurial vim macvim

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

**CoffeeScript language.**

    npm install coffee-script

**Some datastores.**

    brew install postgresql mongodb redis mysql memcached

**Here are some misc. utilities.** (not necessarily required)

    brew install ack tree ffmpeg imagemagick htop-osx watch qt
