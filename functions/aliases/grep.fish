function grep --wraps='grep' --description 'alias grep command grep --color=auto'
    command grep --color=auto $argv
end

function egrep --wraps='egrep' --description 'alias egrep command egrep --color=auto'
    command egrep --color=auto $argv
end

function fgrep --wraps='fgrep' --description 'alias fgrep command fgrep --color=auto'
    command fgrep --color=auto $argv
end
