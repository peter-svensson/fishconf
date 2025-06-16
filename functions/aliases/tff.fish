function tff --wraps='terraform'  --description 'terraform format recursive'
    command terraform fmt -recursive $argv
end
