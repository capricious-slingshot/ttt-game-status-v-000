require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [6,4,2],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
	#returns false for an empty board
	return false if board.all? {|space| space == " "}

	#returns falsey for a draw
	return false if board.any? {|space| space != " "}

  WIN_COMBINATIONS.each do |combo|
		 win = Array.new
     #for each winning combo
     combo.each do |i| #=> [1,2,3]

			 #subtract 1 from object to get corrosponding index in board
			 index = i - 1 #=> [0,1,2]
binding.pry
			 if board[index] == i
				  win << i
			 else
				 break
			 end
     end
		 win
  end
end


          # #check to see if position on the board is taken
          # if position_taken?(board, index)
          #   #if not taken, then not a winning combo and move on
          #   false
          #   #if the position IS taken, and the character matches the one in combo
          # elsif position_taken?(board, index) && i == board[i]
          #   #return true so select adds it to the new array
          #   true
          # end
