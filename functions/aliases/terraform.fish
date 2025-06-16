# function tf --wraps='terraform'
#     command terraform $argv
# end

function tff --wraps='terraform fmt -recursive'
    command terraform fmt -recursive $argv
end
