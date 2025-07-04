function __git_log_medium_format
  echo '%C(bold)Commit:%C(reset) %C(green)%H%C(red)%d%n%C(bold)Author:%C(reset) %C(cyan)%an <%ae>%n%C(bold)Date:%C(reset)   %C(blue)%ai (%ar)%C(reset)%n%+B'
end

function __git_log_oneline_format
  echo '%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n'
end

function __git_log_brief_format
  echo '%C(green)%h%C(reset) %s%n%C(blue)(%ar by %an)%C(red)%d%C(reset)%n'
end
