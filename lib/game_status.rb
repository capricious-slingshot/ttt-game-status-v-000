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
  #for each winning combination
  WIN_COMBINATIONS.each do |combo|
    #irrterate through that combination
    #yield?
    win = combo.select do |i| #=> [1,2,3]
        #see if position is taken in board
          #subtract 1 from combination to get actual index in board
          index = i - 1 #=> [0,1,2]
          #check to see if that position in board is taken
          if position_taken?(board, index)
            #if not taken, then not a winning combo and move on to next combo
            return false
            #if the position IS taken, and the character matches the one ins board
          elsif position_taken?(board, index) && i == board[i]
            #return true so select adds it to the new array
            true
          end
    end
     win
  end
end
