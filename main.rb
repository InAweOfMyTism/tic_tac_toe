require_relative('board')
require_relative("player")
require_relative('game')

# initialize players X and O

puts 'Enter player 1 (X) name:'
player1_name = gets.chomp

puts 'Enter player 2 (O) name:'
player2_name = gets.chomp

#initialize gameboard

game = Game.new(player1_name, player2_name)

game.board.display()

until(game.winner) do
  game.play_round()
end




