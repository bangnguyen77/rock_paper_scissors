require('pry')

class String
  define_method(:rock_paper_scissors) do |opponent|
    player_win = "wins"
    if self == opponent
      player_win = "tied"
    end
    if self == "rock" && opponent == "paper" || self == "paper" && opponent == "scissors" || self == "scissors" && opponent == "rock"
      player_win = "loses"
    end
    player_win
  end
end
