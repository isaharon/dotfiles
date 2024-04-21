# My Dotfiles

Personal dotfiles maintained for Mac.

Configuration for tools include:

* tmux (version >= 3.0a)
    * `C-a` as prefix instead of default `C-b`
    * Split panes with `Prefix + |/-`
    * Split panes use current path directory
    * Window/pane navigation using vim bindings

## Requirements

### Linux/Debian

```shell
# Packages
sudo apt-get install git zsh tmux build-essential golang nodejs npm

# pure
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# neovim
sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Usage

1. Clone repo
1. Run `setup` script in main directory for full setup

Alternatively:

1. Run `setup` script in subdirectories for modular setup

```bash
git clone https://github.com/isaharon/dotfiles
./setup
```
