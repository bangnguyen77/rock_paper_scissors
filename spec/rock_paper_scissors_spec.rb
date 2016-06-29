require("rspec")
require("rock_paper_scissors.rb")

describe('String#rock_paper_scissors') do
  it('display true if you have rock and your opponent has scissors') do
    expect('rock'.rock_paper_scissors("scissors")).to(eq("true"))
  end
  it('display false if you have rock and your opponent has paper') do
    expect('rock'.rock_paper_scissors("paper")).to(eq("false"))
  end
  it('display false if you have paper and your opponent has scissors') do
    expect('paper'.rock_paper_scissors("scissors")).to(eq("false"))
  end
  it('display true if you have paper and your opponent has rock') do
    expect('paper'.rock_paper_scissors("rock")).to(eq("true"))
  end
  it('display false if you have scissors and your opponent has rock') do
    expect('scissors'.rock_paper_scissors("rock")).to(eq("false"))
  end
  it('display true if you have scissors and your opponent has paper') do
    expect('scissors'.rock_paper_scissors("paper")).to(eq("true"))
  end
  it('display tie if you have paper and your opponent has paper') do
    expect('paper'.rock_paper_scissors("paper")).to(eq("tie"))
  end
  it('display tie if you have rock and your opponent has rock') do
    expect('rock'.rock_paper_scissors("rock")).to(eq("tie"))
  end
  it('display tie if you have scissors and your opponent has scissors') do
    expect('scissors'.rock_paper_scissors("scissors")).to(eq("tie"))
  end
end
