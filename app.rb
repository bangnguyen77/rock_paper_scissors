require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do

  erb(:index)

end

get("/answer")  do


@player_one = params.fetch("player_one")
@player_two = params.fetch("player_two")
@player_win = @player_one.rock_paper_scissors(@player_two)
erb(:answer)
end

# get('/player_one') do
#   @player_one = params.fetch('player_one').rock_paper_scissors("player_two")
#   erb(:rock_paper_scissors)
# end
# get('/player_two') do
#   @player_two = params.fetch('player_two').rock_paper_scissors()
#   erb(:rock_paper_scissors)
# end
#
