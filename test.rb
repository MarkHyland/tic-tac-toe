require 'minitest/autorun'
require './tic_tac_toe'

class TestTicTacToe < Minitest::Test

	def setup
		@t = TicTacToe.new
	end

	def test_p1_win
		@t.make_move 1, 1
		@t.make_move 1, 2
		@t.make_move 1, 3
		assert @t.x_win?
	end

	def test_p2_win
		@t.make_move 2, 1
		@t.make_move 2, 4
		@t.make_move 2, 7
		assert @t.o_win?
	end

	def test_tie
		@t.make_move 1, 1
		@t.make_move 2, 2
		@t.make_move 1, 3
		@t.make_move 2, 5
		@t.make_move 1, 8
		@t.make_move 2, 4
		@t.make_move 1, 7
		@t.make_move 2, 9
		@t.make_move 1, 6
		assert @t.tie?
	end
end

