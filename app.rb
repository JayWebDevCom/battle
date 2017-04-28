require 'sinatra/base'
require './lib/player'
require './lib/game'
require './my_helper'

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
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.who_is_up
    @attacker, @defender = @game.attacking_order
    @game.get_attacked(@defender)
    redirect_if_someone_wins
    erb(:attack)
  end

  get '/winner' do
    @attacker, @defender = @game.attacking_order
    erb(:winner)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
