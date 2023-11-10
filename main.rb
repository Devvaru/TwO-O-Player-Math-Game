require 'pp'
require './players'
require './games'

player1 = Player.new(1)
player2 = Player.new(2)
new_game = Game.new(player1, player2)
new_game.match