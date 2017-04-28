require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.the_game_instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.playable_game(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.who_is_up
    @defender = @game.attacking_order[1]
    @attacker = @game.attacking_order[0]
    @game.get_attacked(@defender)
    redirect '/winner' if @attacker.hp == 0 || @defender.hp == 0
    erb(:attack)
  end

  get '/winner' do
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
