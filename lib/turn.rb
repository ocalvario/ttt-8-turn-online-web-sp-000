def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, index)
  if index.between?(1,9)
    if !position_taken?(board, index)
      true
    end
  end

  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board,index, position = "X")
  new_index = input_to_index(index)
  board[new_index]
end

move(board) = ["O", " ", " ", " ", " ", " ", " ", " ", "X"]