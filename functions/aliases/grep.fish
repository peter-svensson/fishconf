function grep --wraps='grep' --description 'alias grep command grep --color=auto'
    command grep --color=auto $argv
end

function egrep --wraps='grep' --description 'alias egrep command egrep --color=auto'
    command egrep --color=auto $argv
end

function fgrep --wraps='grep' --description 'alias fgrep command fgrep --color=auto'
    command fgrep --color=auto $argv
end
