function ip -d 'show external ip'
  dig +short myip.opendns.com @resolver1.opendns.com
end


function localip -d 'show local ip'
  ipconfig getifaddr en0
end

function ips -d 'show all ips'
  ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, ""); print }'
end
