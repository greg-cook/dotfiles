# GOPATH
export GOPATH="${HOME}/go"

export PATH="${HOME}/bin:$PATH"         # User specific binary overrides
export PATH="/opt/homebrew/bin:$PATH"   # Homebrew arm64
export PATH="/usr/local/bin:$PATH"      # Homebrew x86

# Add directories to path to prefer these over system binaries
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/v8@3.15/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Set editors
export EDITOR='nvim'
export VISUAL='nvim'
