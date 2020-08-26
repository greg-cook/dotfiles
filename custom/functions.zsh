function fetch-and-prune {
  # fetch all branches
  git fetch --all >/dev/null
  # Prune remote branches
  git remote prune origin
}

# Clean deleted upstream branches
function git-clean {
  fetch-and-prune
  # Delete local branches that are ":gone" from origin
  git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D
}

# List branches that only exist locally and not on remote
function local-branches {
  fetch-and-prune
  # Show local branches
  git branch -vv | cut -c 3- | awk '$3 !~/\[/ { print $1 }'
}

# Clean repos recursively
# Assumes all your repos are in a single folder
# Relies on git-clean function
function cleanr {
  for dir in */; do
  echo "<--- Cleaning local branches in repo $dir --->"
    cd $dir
    git-clean
    cd ..
  done
}

# List local-only branches recursively
# Assumes all your repos are in a single folder
# Relies on git-clean function
function branchr {
  for dir in */; do
  echo "<--- Cleaning local branches in repo $dir --->"
    cd $dir
    local-branches
    cd ..
  done
}

# List local-only branches recursively
# Assumes all your repos are in a single folder
# Relies on git-clean function
function cbranchr {
  for dir in */; do
  echo "<--- Current branch in repo $dir --->"
    cd $dir
    git branch --show-current
    cd ..
  done
}

# List local-only branches recursively
# Assumes all your repos are in a single folder
# Relies on git-clean function
function glmr {
  for dir in */; do
  echo "<--- Pulling master in repo $dir --->"
    cd $dir
    if [[ $(git branch --show-current) = 'master' ]]; then
      git pull
    else
      echo "master not checked out, aborting..."
    fi
    cd ..
  done
}

# Drain kubernetes node in preparation of replacement
function kdrain() {
  kubectl drain $1 --force --delete-local-data --ignore-daemonsets
}
