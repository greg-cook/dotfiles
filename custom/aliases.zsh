alias cl="clear"
alias e="$EDITOR"

# This is required so you can use aliases with "watch"
alias watch='watch '

# Edit hosts file
alias hosts="sudo $EDITOR /etc/hosts"

# kubectx shortcuts
alias kx="kubectl ctx"
alias kns="kubectl ns"

# Copy public ip to the clipboard
alias pubip="curl -s ipv4.icanhazip.com | tee >(pbcopy)"

alias lzd='lazydocker'
alias asl="aws sso login"
alias lg=lazygit
