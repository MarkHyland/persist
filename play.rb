require './normal'
require './db/setup'
require './lib/all'

g = Game.new
ttt = TicTacToe.new
# Added code
var3, var4 = ttt.competitors
print g.stats var3, var4

until ttt.over?
  puts ttt.display_board
  print "#{ttt.current_player.name} - where would you like to play? "

  move = gets.chomp
  ttt.take_move move
end

if ttt.winner
  puts "#{ttt.winner} wins!"
  # Added code
  g.win ttt.winner
  g.lose ttt.loser
else
  puts "It's a draw"
  # Added code
  var1, var2 = ttt.loser
  g.tie var1
  g.tie var2
end

