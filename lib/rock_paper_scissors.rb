require('pry')

class String
  define_method(:rock_paper_scissors) do |opponent|
    player_win = "true"
    if self == "rock"
      if opponent == "paper"
        player_win = "false"
      end
      if opponent == "rock"
        player_win = "tie"
      end
    end
    if self == "scissors"
      if opponent == "rock"
        player_win = "false"
      end
      if opponent == "scissors"
        player_win = "tie"
      end
    end
    if self == "paper"
      if opponent == "scissors"
        player_win = "false"
      end
      if opponent == "paper"
        player_win = "tie"
      end
    end
    player_win
  end
end
