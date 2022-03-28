[[ $(uname -m) == "arm64" ]] && eval "$(/opt/homebrew/bin/brew shellenv)" || eval "$(/usr/local/bin/brew shellenv)"

# Use bash style arrays
setopt KSH_ARRAYS

# List of brew packages that we want to have in our PATH
brew_paths=(
    "imagemagick"
    "libpq"
    "mysql-client@5.7"
    "openssl@1.1"
    "ruby"
    "v8@3.15"
)

# Create an array of paths containing our brew packages
# Caters for both native packages and Rosetta2 packages
# Don't add missing paths
for p in ${brew_paths[*]}; do
    if [[ -d "$(brew --prefix)/opt/$p" ]]; then
        new_paths[${#new_paths[@]}]="$(brew --prefix $p)/bin"
    fi
done

# Update our PATH
export PATH=$(
    IFS=:
    echo "${new_paths[*]}"
):$PATH

# Unset bash style arrays
unsetopt KSH_ARRAYS
