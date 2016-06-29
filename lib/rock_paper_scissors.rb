require('pry')

class String
  define_method(:rock_paper_scissors) do |opponent|
    player_win = "true"
    if self == opponent
      player_win = "tie"
    end
    if self == "rock" && opponent == "paper" || self == "paper" && opponent == "scissors" || self == "scissors" && opponent == "rock"
      player_win = "false"
    end
    player_win
  end
end
