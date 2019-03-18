require_relative 'turn'
require_relative 'question'
require_relative 'player'

class Game
  def initialize(name1, name2)
    player1 = Player.new(name1)
    player2 = Player.new(name2)

    @players = [player1, player2]
    @turn = Turn.new(@players)
  end

  def play
    while (not is_over?)
      current_player = @turn.current_player
      question = Question.new

      puts
      puts header("Turn: #{@turn.current_turn} - Player: #{current_player.name}")
      puts
      puts get_score
      puts

      puts "#{current_player.name}: " + question.get_question
      player_answer = gets.chomp.to_i

      if (player_answer == question.get_answer)
        puts "#{current_player.name}> CORRECT!"
      else
        puts "#{current_player.name}> WRONG!"
        current_player.lose_life
      end

      @turn.next_turn
    end

    puts
    puts "#{alive_players[0].name} wins with a score of #{alive_players[0].current_lives}/3"
    puts
    puts header("Game Over!")
    puts
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