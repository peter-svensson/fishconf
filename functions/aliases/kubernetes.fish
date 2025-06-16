# function k --wraps='kubectl'
#     command kubectl $argv
# end

function kc --wraps='kubectl --context'
    command kubectl --context $argv
end

function sc --wraps='stern --context'
    command stern --context $argv
end
