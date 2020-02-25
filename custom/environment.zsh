# GOPATH
export GOPATH="${HOME}/go"

# Add directories to path to prefer these over system binaries
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"

# Set editors
export EDITOR='nvim'
export VISUAL='nvim'

# Suppress direnv noise
export DIRENV_LOG_FORMAT=""

# Don't prompt for .env loading
export ZSH_DOTENV_PROMPT=false
