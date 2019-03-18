class Player
  attr_reader :name
  MAX_LIVES = 3

  def initialize(name)
    @name = name
    @current_lives = MAX_LIVES
  end
end