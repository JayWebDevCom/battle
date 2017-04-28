class Game

  attr_reader :attacking_order

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @attacking_order = @players.reverse
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def get_attacked(player)
    player.get_hit
  end

  def who_is_up
    @attacking_order = @attacking_order.reverse
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.the_game_instance
    @game
  end

end
