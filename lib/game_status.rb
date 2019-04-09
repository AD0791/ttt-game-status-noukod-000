# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won? board
  WIN_COMBINATIONS.each do |c|
    winpo = c[0]
    winpo2 = c[1]
    winpo3 = c[2]
    
    if board[winpo] == "X"&&board[winpo2]=="X"&&board[winpo3]=="X"
      return c
    elsif board[winpo] == "O"&&board[winpo2]=="O"&&board[winpo3] == "O"
      return c
    else
      position_taken?(board,c[0])
    end
  end
end

def full? board
  board.all? do |a|
    a == "X" || a == "O"
  end
end

def draw? board
   full?(board) && !won?(board)
end