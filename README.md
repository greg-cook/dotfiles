# dotfiles

A collection of files to setup my development environment

## Installation

### Prerequisites:

Clone this repo and run bootstrap script:

```sh
cd ./dotfiles && ./bootstrap
```

## Terminal Setup

My terminal setup leverages [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) very heavily and is therefore structured around it:

* Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* Custom `.zsh` files are in [custom](https://github.com/greg-cook/dotfiles/tree/main/custom). These files are used to:
  * declare custom aliases and functions
  * export environment variables

  The `bootstrap` script symlinks these files to `~/.oh-my-zsh/custom/*.zsh` so they are loaded by `Oh My Zsh`

### Secret values

Any "secret" data is kept in `custom/_secret.zsh`

This file is ignored so it is not accidentally committed to source control. Make sure to copy/backup its contents as appropriate.

## MacOS preferences
```sh
./util/macos
```
