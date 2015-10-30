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

### Environment, ZSH, Sublime configuration

Next, clone this Git repository to your $HOME directory and initialize/update
the submodules and finally hook everything up by running the `install` script.

    git clone git://github.com/martijnbleeker/dotfiles.git $HOME/dotfiles

    cd $HOME/dotfiles && git submodule init && \
      git submodule update --recursive && ./install

This should set up the symlinks from the dotfiles directory to your `$HOME`
directory, do not remove the `dotfiles` directory.

### OSX defaults

Set osx defaults.

`./.osx`

### Homebrew

Next, install [Homebrew](http://mxcl.github.com/homebrew/) using the following
command.

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

After installing Homebrew, ensure permissions are correct by running the
following.

    sudo chown -R $(whoami):admin /usr/local
    brew update
    brew tap Homebrew/bundle
    brew bundle

### ITerm2

Download [ITerm2](http://www.iterm2.com/), a Terminal replacement.
Using color preset "Tango Dark" at the moment.

#### Keyboard setup

Under "(Global) Keys" add the following maps *:

- `alt + backspace` = `Send Hex Code: 17`
- `alt + <-` = `Send Escape Sequence: b`
- `alt + ->` = `Send Escape Sequence: f`

\* = Use the actual keys, not the text above.

### Sublime plugins

Install the following Sublime plugins through Sublime package control once
it is installed.

- [Package Control](http://wbond.net/sublime_packages/package_control)
- [BracketHighlighter](https:/github.com/facelessuser/BracketHighlighter)
- [Monokai Extended](https://github.com/jonschlinkert/sublime-monokai-extended.git)
- [Sass](https://github.com/nathos/sass-textmate-bundle)
- [SublimeCodeIntel](https://github.com/SublimeCodeIntel/SublimeCodeIntel.git)
- [Theme - Soda](https://github.com/buymeasoda/soda-theme.git)

### Atom plugins

- atom-eco
- file-icons
- language-dotenv
- language-haml
- language-rspec
- minimap
- omni-ruler

### chruby and ruby-install

Install chruby by following the instructions on the
[project page](https://github.com/postmodern/chruby).


```bash
ruby-install ruby-[VERSION] ~/.rubies/ruby-[VERSION]
```

#### Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +:PluginInstall
```
