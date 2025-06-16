function bup -d "Update homebrew, upgrade installed packages, and cleanup"
  set -l file "$HOME/.local/share/Brewfile"

  echo "Checking Brewfile"
  set -l result $(brew bundle cleanup --file $file)
  if test $status -ne 0
    set -l missing $(echo "$result" | grep -c 'uninstall formulae')
    if test $missing -ne 0
      echo "Missing installed dependencies in Brewfile $file"
      echo "Update before running again"
      echo "$result"
      return
    else
      echo "Errors in Brewfile $file?"
      echo "$result"
      echo "Fix them and try again"
      return
    end
  end

  echo "Brewfile matches installation, updating packages"
  brew update && brew upgrade && brew cleanup
  set -l casks $(brew list --cask)
  for cask in $casks
    set -l installation_status $(brew info --cask $cask --json=v2 \
      | jq -r "[.casks[].outdated,.casks[].installed,.casks[].version] \
      | @tsv" \
      | read outdated installed current)
    if test "$current" != "$installed"
      echo "Upgrading $cask from $installed to $current"
      brew upgrade --cask --greedy $cask
    else
      echo "$cask:$current is latest version"
    end
  end
end
