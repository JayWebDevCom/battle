class Player

  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @hp = hp
    @name = name
  end

  def get_hit
    @hp -= 10
  end

  def hit_points
    "#{hp}HP"
  end

end
