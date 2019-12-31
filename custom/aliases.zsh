alias cl='clear'
alias e='$EDITOR'

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
alias deploydiff="git log production..master --pretty=format:'%<(23)%an    %s' --abbrev-commit"

# Edit hosts file
alias hosts='sudo $EDITOR /etc/hosts'

# kube things
alias kx='kubectx'
alias kns='kubens'
