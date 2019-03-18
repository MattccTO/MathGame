require_relative 'game'

puts "Welcome to the Math Game!"

puts "Enter name for player 1:"
player1 = gets.chomp

puts "Enter name for player 2:"
player2 = gets.chomp

game = Game.new(player1, player2)
game.play

puts "Thanks for playing!"

