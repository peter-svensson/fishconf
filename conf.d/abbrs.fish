abbr -a -- nv nvim

abbr -a -- cm chezmoi

abbr -a -- k kubectl

abbr -a -- tf terraform

# # Always enable colored `grep` output
# # Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
# alias grep='grep --color=auto'
# alias fgrep='fgrep --color=auto'
# alias egrep='egrep --color=auto'
#
#
# # IP addresses
# alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# alias localip="ipconfig getifaddr en0"
# alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
#
#
# # Recursively delete `.DS_Store` files
# alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
#
# # Empty the Trash on all mounted volumes and the main HDD.
# # Also, clear Apple’s System Logs to improve shell startup speed.
# # Finally, clear download history from quarantine. https://mths.be/bum
# alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
#
# # Show/hide hidden files in Finder
# alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
# alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
#
#
# # Reload the shell (i.e. invoke as a login shell)
# alias reload="exec $SHELL -l"
#
# # Print each PATH entry on a separate line
# alias path='echo -e ${PATH//:/\\n}'
#
# alias updrepo="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf 'Updating repository %h\n' -execdir bash -c 'git ls-remote >/dev/null 2>&1 && git up' \;"
# alias dirtyrepo="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf '%h: ' -execdir bash -c \"if [[ -z \\\"\\\$(git status --porcelain | tail -n1)\\\" ]]; then echo Clean | color green Clean; else echo Dirty | color red Dirty; fi\" \;"
# alias branches="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf 'Repository %h: ' -execdir sh -c \"git branch -l | awk '{\\\$1=\\\$1};1' | sort | paste -d, -s | color red '* [^, ]*' green '* master'\" \;"
# alias allbranches="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf 'Repository %h: ' -execdir sh -c \"git branch -a | grep -vE 'origin/ma(ster|in)' | awk '{\\\$1=\\\$1};1' | sort | paste -d, -s | color red '* [^, ]*' green '* master' green '* main'\" \;"
# alias stashes="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf 'Repository %h: ' -execdir sh -c \"git stash list | paste -d, -s\" \;"
# # Checkout default branch in all Git repositories found in sub-directories
# alias cdb="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' -printf 'Repository %h:\n' -execdir sh -c \"git checkout main > /dev/null 2>&1 || git checkout master > /dev/null 2>&1\" \;"
# alias prune="gfind . -type d -name .git ! -path '*/.terraform/*' ! -path '*/.direnv/*' | xargs -I {} zsh -ic \"echo 'Pruning repository {}' && cd {} && gbl | grep '\[gone\]' | sed 's/^\s\+\([^ ]*\).*$/\1/' | xargs -r git branch -d --force \" \;"
#
# alias gup="git up"
# alias hpr="hub pull-request"
# alias cm=chezmoi
#
# alias sso=aws-sso-profile
#
# unalias gh # Remove git help alias in favour of github cli
#
