alias cl="clear"
alias e="$EDITOR"

# Use nvim instead of vim/vi
alias vim="nvim"
alias vi="nvim"

# This is required so you can use aliases with "watch"
alias watch="watch "

# Docker
alias dkb="docker build"
alias dki="docker images"
alias dkp="docker push"
alias dkpl="docker pull"
alias dkps="docker ps"
alias dkr="docker run"
alias dkri="docker run -it --entrypoint=bash"

# Edit hosts file
alias hosts="sudo $EDITOR /etc/hosts"

# kubectx shortcuts
alias kx="kubectx"
alias kns="kubens"

# Copy public ip to the clipboard
alias pubip="curl -s ipv4.icanhazip.com | tee >(pbcopy)"

# Copy public key to the clipboard
alias pubkey="cat $HOME/.ssh/id_rsa.pub | tee >(pbcopy)"

if [[ $(uname -sm) == "Darwin arm64" ]]; then
    # Aliases requiring amd64
    alias ibrew="arch -x86_64 /usr/local/bin/brew"
    alias iasdf="arch -x86_64 asdf"

    # When need to run under amd64, specify a short alias
    alias i="arch -x86_64"
fi

# Start dev instance
alias dev-start="asp development-root && aws ec2 start-instances --instance-ids $AWS_DEV_INSTANCE"
