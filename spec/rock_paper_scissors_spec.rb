require("rspec")
require("rock_paper_scissors.rb")

describe('String#rock_paper_scissors') do
  it('display true if you have rock and your opponent has scissors') do
    expect('rock'.rock_paper_scissors("scissors")).to(eq("wins"))
  end
  it('display false if you have rock and your opponent has paper') do
    expect('rock'.rock_paper_scissors("paper")).to(eq("loses"))
  end
  it('display false if you have paper and your opponent has scissors') do
    expect('paper'.rock_paper_scissors("scissors")).to(eq("loses"))
  end
  it('display true if you have paper and your opponent has rock') do
    expect('paper'.rock_paper_scissors("rock")).to(eq("wins"))
  end
  it('display false if you have scissors and your opponent has rock') do
    expect('scissors'.rock_paper_scissors("rock")).to(eq("loses"))
  end
  it('display true if you have scissors and your opponent has paper') do
    expect('scissors'.rock_paper_scissors("paper")).to(eq("wins"))
  end
  it('display tie if you have paper and your opponent has paper') do
    expect('paper'.rock_paper_scissors("paper")).to(eq("tied"))
  end
  it('display tie if you have rock and your opponent has rock') do
    expect('rock'.rock_paper_scissors("rock")).to(eq("tied"))
  end
  it('display tie if you have scissors and your opponent has scissors') do
    expect('scissors'.rock_paper_scissors("scissors")).to(eq("tied"))
  end
end
