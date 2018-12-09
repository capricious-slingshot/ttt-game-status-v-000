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
  x = 0
  WIN_COMBINATIONS.each do |win_combination|
    x = win_combination.select do |index|
          board[index] == win_combination[index]
        end
  end
  if x.length == 3
    x
  else
    false
  end
  print x
end
