class Turn
  attr_reader :current_turn

  def initialize(players)
    @players = players.dup.shuffle
    @current_turn = 0
  end

  def current_player
    @players[@current_turn % 2]
  end
end