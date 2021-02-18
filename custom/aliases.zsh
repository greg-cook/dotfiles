alias cl='clear'
alias e='$EDITOR'

# Use nvim instead of vim/vi
alias vim='nvim'
alias vi='nvim'

# This is required so you can use aliases with 'watch'
alias watch='watch '

# Docker
alias dkb='docker build'
alias dki='docker images'
alias dkp='docker push'
alias dkpl='docker pull'
alias dkps='docker ps'
alias dkr='docker run'
alias dkri='docker run -it --entrypoint=bash'

# Nicely formatted diff for announcements
alias deploydiff="git log production..master --pretty=format:'%<(24)%an    %s' --abbrev-commit"

# Edit hosts file
alias hosts='sudo $EDITOR /etc/hosts'

# kubectx shortcuts
alias kx='kubectx'
alias kns='kubens'

# Show the weather
alias wx='curl v2.wttr.in'

# Copy public ip to the clipboard
alias pubip='curl -s ipv4.icanhazip.com | pbcopy'

alias ibrew='arch -x86_64 /usr/local/bin/brew'
