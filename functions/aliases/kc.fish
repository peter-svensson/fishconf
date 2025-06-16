function kc --wraps='kubectl' --description 'kubectl with context'
    command kubectl --context $argv
end
