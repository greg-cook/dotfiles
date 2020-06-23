# GOPATH
export GOPATH="${HOME}/go"

# Add directories to path to prefer these over system binaries
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Set editors
export EDITOR='nvim'
export VISUAL='nvim'

# Don't prompt for .env loading from 'dotenv' OMZ plugin
export ZSH_DOTENV_PROMPT=false
