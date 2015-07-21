# tic_tac_toe

The game has some minor flaws.  The nature of the loop makes it so that Player 2 
has a turn even after Player 1 has won or the board is full.  I hardcoded it so 
that the turn does not affect the final outcome.  
An illegal move results in a loss of turn.  But, I did not account for if a player 
plays on a spot that was already moved.  As such, the players can replace their 
opponent's move.
