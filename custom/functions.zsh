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
  echo "-- repo ${dir%/}"
    cd $dir
    git-clean
    cd ..
  done
}

# List local-only branches recursively
# Assumes all your repos are in a single folder
# Relies on local-branches function
function branchr {
  for dir in */; do
  echo "-- repo ${dir%/}"
    cd $dir
    local-branches
    cd ..
  done
}

# List checked out branch recursively
# Assumes all your repos are in a single folder
function cbranchr {
  for dir in */; do
  echo "-- repo ${dir%/}"
    cd $dir
    git branch --show-current
    cd ..
  done
}

# Pull master branch if checked out
# Assumes all your repos are in a single folder
function glmr {
  for dir in */; do
  echo "-- repo ${dir%/}"
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

# Check ssl certificate dates
function ssldates() {
	SERVERNAME=$1
	HOST=$2
	echo | openssl s_client -servername $SERVERNAME -connect $HOST:443 2>/dev/null | openssl x509 -noout -dates
}
# Output all data about a given certificate
function ssltext() {
	SERVERNAME=$1
	HOST=$2
	echo | openssl s_client -servername $SERVERNAME -connect $HOST:443 2>/dev/null | openssl x509 -noout -text
}
