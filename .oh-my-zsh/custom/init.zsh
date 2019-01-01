# Initialize rbenv
eval "$(rbenv init -)"

# Initialize nodenv
eval "$(nodenv init -)"

# Initialize goenv
eval "$(goenv init -)"

# GOPATH
export GOPATH="${HOME}/go"
#
# Add directories to path to prefer these over system binaries
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
