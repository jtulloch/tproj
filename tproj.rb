module TProj
  def self.getSessions
    sessions = Hash.new
    session_lines = %x{tmux list-sessions}.split("\n")

    session_lines.each do | session |
      session_segs = session.split
      session_name = session_segs[0].chomp(":")

      if session_name =~ /\w+\-\w+/ 
        parts = session_name.split("-")

        sessions[ parts[0] ] = {
          :session_name => session_name,
          :layout => parts[1]
        }
      end
    end

    sessions
  end
end
