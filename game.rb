require './tic_tac_toe'
require 'pry'

t = TicTacToe.new

until t.x_win? || t.o_win? || t.tie? do

	t.board
	print "		Player 1, what is your move?  "

	number = gets.to_i
	print "\n"
	t.make_move 1, number

	t.board
	print "		Player 2, what is your move?  "

	number = gets.to_i
	print "\n"
	t.make_move 2, number
	end

# Hard coded: 
# 1) Player 1 wins, and Player 2 makes a move 
# 	 and wins 
# 2) Board is full, and Player 2 makes a move
#    and wins
if t.x_win? && t.o_win?
	puts "		Sorry Player 2, but Player 1 wins!"
elsif t.x_win?
	puts "		Player 1 wins!"
elsif t.o_win? && t.tie?
	puts "		Sorry Player 2, but its a tie!"
elsif t.o_win?
	puts "		Player 2 wins!"
else 
	puts "		Tie!"
end


