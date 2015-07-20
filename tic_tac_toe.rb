require 'pry'
require './player'

class TicTacToe

	attr_reader :a, :b, :c, :d, :e, :f, :g, :h, :i, :x, :o 

	def initialize
		@a = "1"
		@b = "2"
		@c = "3"
		@d = "4"
		@e = "5"
		@f = "6"
		@g = "7"
		@h = "8"
		@i = "9"
		@x = Player.new.p1("Mark")
		@o = Player.new.p2("James")
	end


	def board
		top = [@a,@b,@c].join("|")
		mid = [@d,@e,@f].join("|")
		bot = [@g,@h,@i].join("|")
	 
		print(" #{top}")
		print("\n #{mid}")
		print("\n #{bot}")
	end

	def make_move p, number
		if p == 1 
			if number == 1
			  a.replace("x")
			elsif number == 2
			  b.replace("x")
			elsif number == 3
			  c.replace("x")
			elsif number == 4
			  d.replace("x")
			elsif number == 5
			  e.replace("x")
			elsif number == 6
			  f.replace("x")
			elsif number == 7
			  g.replace("x")
			elsif number == 8
			  h.replace("x")
			elsif number == 9
			  i.replace("x")
			elsif 
				puts "		That is an illegal move. Turn lost"	
			end
		else 
			if number == 1
			  a.replace("o")
			elsif number == 2
			  b.replace("o")
			elsif number == 3
			  c.replace("o")
			elsif number == 4
			  d.replace("o")
			elsif number == 5
			  e.replace("o")
			elsif number == 6
			  f.replace("o")
			elsif number == 7
			  g.replace("o")
			elsif number == 8
			  h.replace("o")
			elsif number == 9
			  i.replace("o")
			elsif 
				puts "		That is an illegal move. Turn lost"
			end
		end
	end

	# All of the winning combinations 
	def x_win?
		if (@a == "x" && @b == "x" && @c =="x") || (@d == "x" && @e == "x" && @f =="x") || (@g == "x" && @h == "x" && @i =="x") || (@a == "x" && @d == "x" && @g =="x") || (@b == "x" && @e == "x" && @h =="x") || (@c == "x" && @f == "x" && @i =="x") || (@a == "x" && @e == "x" && @i =="x") || (@c == "x" && @e == "x" && @g =="x") 
			return true
		else
			return false
		end
	end

	def o_win?
		if (@a == "o" && @b == "o" && @c =="o") || (@d == "o" && @e == "o" && @f =="o") || (@g == "o" && @h == "o" && @i =="o") || (@a == "o" && @d == "o" && @g =="o") || (@b == "o" && @e == "o" && @h =="o") || (@c == "o" && @f == "o" && @i =="o") || (@a == "o" && @e == "o" && @i =="o") || (@c == "o" && @e == "o" && @g =="o") 
			return true
		else
			return false
		end
	end 

	def tie?
		if  @a != "1" && @b != "2" && @c != "3" &&
			@d != "4" && @e != "5" && @f != "6" &&
			@g != "7" && @h != "8" && @i != "9"
			return true
		else
		end
	end

end





