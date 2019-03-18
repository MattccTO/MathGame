require_relative 'turn'
require_relative 'question'
require_relative 'player'

class Game
  def initialize
    player1 = Player.new('Player 1')
    player2 = Player.new('Player 2')

    @players = [player1, player2]
    @turn = Turn.new(@players)
  end

  def play
    current_player = @turn.current_player
    question = Question.new
    header("Turn: #{@turn.current_turn} - Player: #{current_player.name}")

    puts "#{current_player.name}:" + question.get_question
    player_answer = gets.chomp.to_i

    if (player_answer == question.get_answer)
      puts "CORRECT!"
    else
      puts "WRONG!"
    end
  end

  private

  def header(message)
    puts "+++++-----#{message}-----+++++"
  end
end