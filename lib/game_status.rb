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

	# returns false for a draw
	# return false if board.any? {|space| space != " "}

  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    # position_1 = board[A] # load the value of the board at win_index_1
    # position_2 = board[B] # load the value of the board at win_index_2
    # position_3 = board[C] # load the value of the board at win_index_3

    if board[win_index_1] == combo[0] && board[2in_index_1] == combo[1] && board[win_index_3] == combo[2]
      return combo # return the win_combination indexes that won.
    else
      false
    end
  end

  #   WIN_COMBINATIONS.each do |combo|
  # 		 match = []
  #      #for each winning combo
  #      combo.each do |i| #=> [0,1,2]
  # binding.pry
  # 			 #subtract 1 from object to get corrosponding index in board
  # 			#  index = i - 1 #=> [0,1,2]
  #
  # 			 #if i & board[index] dont match, try next combo
  # 			 next if board[i] != i
  #
  # 			 #otherwise, add index to winnning array
  # 			 match << index
  #      end
  # 		 match
  #   end
end
