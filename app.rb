require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.playable_game(player_1, player_2)
    @game = Game.the_game_instance
    redirect '/play'
  end

  get '/play' do
    @game = Game.the_game_instance
    erb(:play)
  end

  get '/attack' do
    @game = Game.the_game_instance
    @game.who_is_up
    defend = @game.attacking_order[1]
    @game.get_attacked(defend)
    redirect '/winner' if @game.player_1.hp == 0 || @game.player_2.hp == 0
    erb(:attack)
  end

  get '/winner' do
    @game = Game.the_game_instance
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
