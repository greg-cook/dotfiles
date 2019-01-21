#!/usr/bin/env bash

echo "Setting up dev environment..."


# Do the following on MacOS only
if [[ $(uname) == "Darwin" ]]; then

  # Install brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Install allthethings with Brewfile
  brew bundle

fi


#### Shell (zsh) configuration ####
# Install Oh My Zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install Powerlevel9k zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install additional zsh plugins not included with Oh My Zsh
git clone https://github.com/mafredri/zsh-async.git ~/.oh-my-zsh/custom/plugins/zsh-async
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Link custom .zsh files to Oh My Zsh custom folder
ln -s ~/dotfiles/.oh-my-zsh/custom/*.zsh ~/.oh-my-zsh/custom/

# Link .zshrc to home folder
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.editorconfig ~/.editorconfig

# Change the users default shell
chsh -s /usr/local/bin/zsh


#### neovim ####
# Install zplug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link nvim's init file
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim

# Install neovim plugins for various tools
# Python
pip install setuptools
pip  install --upgrade neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim
# Node

# Install nvim plugins
nvim +'PlugInstall --sync' +'qa'
~/.config/nvim/plugged/youcompleteme/install.py --go-completer
