# dotfiles

A collection of files to setup my development environment

## Installation

Clone this repo and run bootstrap script:

```sh
git clone git@github.com:greg-cook/dotfiles.git ~/dotfiles
./bootstrap.sh
```

## Terminal Setup

* [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) is used to manage my shell setup.
* [Powerlevel9k](https://github.com/bhilburn/powerlevel9k) is the theme I use.

### Custom files

Custom `.zsh` files are in [/.oh-my-zsh/custom](https://github.com/greg-cook/dotfiles/.oh-my-zsh/custom)

These files are used to:
* declare custom aliases and functions
* setup environment variables
* setup the prompt

The `bootstrap.sh` script symlinks these files to `~/.oh-my-zsh/custom/*.zsh` so they are loaded with `zsh`

### Secret values

Any "secret" data is kept in [/.oh-my-zsh/custom/secret.zsh](https://github.com/greg-cook/dotfiles/.oh-my-zsh/custom/secret.zsh)

This file is ignored so it is not accidentally commited to source control. Make sure to backup its contents as appropriate.
