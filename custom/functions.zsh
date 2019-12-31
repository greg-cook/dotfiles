function old-kube {
  if [[ $(which kubectl) = "/usr/local/bin/kubectl" ]]; then
    mv $HOME/bin/kubectl* $HOME/bin/kubectl
    src
  fi
}

function new-kube {
  if [[ $(which kubectl) = "$HOME/bin/kubectl" ]]; then
    mv $HOME/bin/kubectl $HOME/bin/kubectl.old
    src
  fi
}


# Clean deleted upstream branches
function git-clean {
  # fetch all branches
  git fetch --all
  # Prune remote branches
  git remote prune origin
  # Delete local branches that are ":gone" from origin
  git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D
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
