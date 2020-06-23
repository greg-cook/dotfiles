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

# Intercept well-intentioned brew commands that will break things
function brew() {
  case $@ in
    *elasticsearch|*mysql|*node|*nodenv|*nvm|*postgresql|*rbenv|*ruby|*rvm|*yarn)
      if [[ $1 == "install" || $1 == "upgrade" ]]; then
        echo "Here be dragons, you don't need to do this, ask someone for guidance..."
      else
        command brew $@
      fi
      ;;
    *)
      command brew $@
      ;;
  esac
}

# Drain kubernetes node in preparation of replacement
function kdrain() {
  kubectl drain $1 --force --delete-local-data --ignore-daemonsets
}
