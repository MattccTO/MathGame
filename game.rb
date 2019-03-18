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
    while (not is_over?)
      current_player = @turn.current_player
      question = Question.new

      puts header("Turn: #{@turn.current_turn} - Player: #{current_player.name}")

      puts "#{current_player.name}:" + question.get_question
      player_answer = gets.chomp.to_i

      if (player_answer == question.get_answer)
        puts "#{current_player.name}: CORRECT!"
      else
        puts "#{current_player.name}: WRONG!"
        current_player.lose_life
      end

      puts get_score

      @turn.next_turn
    end

    puts "#{alive_players[0].name} wins with a score of #{alive_players[0].current_lives}/3"

    puts header("Game Over!")
  end

  private

  def header(message)
    "+++++-----#{message}-----+++++"
  end

  def get_score
    "#{@players[0].name}: #{@players[0].current_lives}/3  vs  #{@players[1].name}: #{@players[1].current_lives}/3"
  end

  def alive_players
    @players.select { |player| not player.is_dead? }
  end

  def is_over?
    alive_players.count == 1
  end
end