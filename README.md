# dotfiles

A collection of files to setup my development environment

## Installation

### Prerequisites:

Need to have `git` installed. On MacOS:

```sh
xcode-select --install
```

Clone this repo and run bootstrap script:

```sh
git clone git@github.com:greg-cook/dotfiles.git ~/dotfiles
cd ~/dotfiles && ./bootstrap
```

## Terminal Setup

My terminal setup leverages [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) very heavily and is therefore structured around it:

* Theme: [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
* Custom `.zsh` files are in [custom](https://github.com/greg-cook/dotfiles/tree/master/custom). These files are used to:
  * declare custom aliases and functions
  * export environment variables

  The `bootstrap` script symlinks these files to `~/.oh-my-zsh/custom/*.zsh` so they are loaded by `Oh My Zsh`

### Secret values

Any "secret" data is kept in [custom/secret.zsh](https://github.com/greg-cook/dotfiles/custom/secret.zsh)

This file is ignored so it is not accidentally commited to source control. Make sure to copy/backup its contents as appropriate.

## MacOS preferences
```sh
./util/macos
```
