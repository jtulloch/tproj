#!/usr/bin/ruby

require 'tproj'

abort("USAGE: tproj <proj_name> <layout_name>") if ARGV.length != 2

proj = ARGV[0]
layout = ARGV[1]
session_name = "#{proj}-#{layout}"

sessions = TProj::getSessions

if system("echo $TMUX")
  # session_command = sessions[proj][:layout] == layout ? "tmux switch-client -t " : "tmux new-session -s "
  # session_command << session_name
else

end

# puts session_command
#`#{session_command}`
puts "tmux display-message" if system("echo $TMUX")
