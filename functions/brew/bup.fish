function bup -d "Update homebrew, upgrade installed packages, and cleanup"
    set -l file "$HOME/.local/share/Brewfile"

    echo "Checking Brewfile"
    set -l result $(brew bundle cleanup --file $file)
end
