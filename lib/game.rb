class Game

  attr_reader :attacking_order


  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacking_order = @players.reverse
    # @to_play = @players.last
    # @attacker = @players.first
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
    # @to_play == @players.last ? @to_play = @players.first : @to_play = @players.last
    @attacking_order = @attacking_order.reverse
  end
  #
  # def attacker
  #   @attacker == @players.last ? @attacker = @players.first : @attacker = @players.last
  # end

end
