if not set -q HOMEBREW_PREFIX
    if test -e /opt/homebrew/bin/brew
        /opt/homebrew/bin/brew shellenv | source
    else if test -e /usr/local/bin/brew
        /usr/local/bin/brew shellenv | source
    else
        return 1
    end
end

# Add keg-only apps
set -q HOMEBREW_KEG_ONLY_APPS || set -U HOMEBREW_KEG_ONLY_APPS ruby curl sqlite
for app in $HOMEBREW_KEG_ONLY_APPS
    if test -d "$HOMEBREW_PREFIX/opt/$app/bin"
        fish_add_path "$HOMEBREW_PREFIX/opt/$app/bin"
        set MANPATH "$HOMEBREW_PREFIX/opt/$app/share/man" $MANPATH
    end
end

# Add fish completions
if test -e "$HOMEBREW_PREFIX/share/fish/completions"
    set --append fish_complete_path "$HOMEBREW_PREFIX/share/fish/completions"
end
if test -d "$HOMEBREW_PREFIX/share/fish/vendor_completions.d"
        set -p fish_complete_path "$HOMEBREW_PREFIX/share/fish/vendor_completions.d"
    end
# Other homebrew vars.
set -q HOMEBREW_NO_ANALYTICS || set -gx HOMEBREW_NO_ANALYTICS 1

# Reset pre-path
set -q prepath && fish_add_path --prepend --move $prepath

fish_add_path -gP "$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin/";

