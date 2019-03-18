class Player
  attr_reader :name, :current_lives
  MAX_LIVES = 3

  def initialize(name)
    @name = name
    @current_lives = MAX_LIVES
  end

  def lose_life
    @current_lives -= 1
  end

  def is_dead?
    @current_lives <= 0
  end
end