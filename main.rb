require 'pp'
require './players'
require './matches'

player1 = Player.new("1")
player2 = Player.new("2")
match = Match.new(player1, player2)

loop do
    match.ask_question
    break if player1.out_of_lives? || player2.out_of_lives?
end
  
if player1.out_of_lives?
    puts "Player 2 wins!"
else
    puts "Player 1 wins!"
end