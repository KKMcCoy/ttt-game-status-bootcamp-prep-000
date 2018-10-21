# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
def won?(board)

  won = false;
  winner = [];
  
  WIN_COMBINATIONS.each do |win_combination|
   
  if win_combination.all? {|win_index| board[win_index] == "X"} || win_combination.all? {|win_index| board[win_index] == "O"};
    won = true;
    winner = win_combination;
  end
  
   winner
  end
end 

# def won?(board)
# winner = []
# empty_board = board.all? {|x| x == " "}
# WIN_COMBINATIONS.each do |sub_array|
#     if empty_board || full?(board)
#       return false
#     elsif sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
#       winner = sub_array
#     end
#   end
#   winner
# end


def full?(board)
  board.none? {|x| x == " "}
end

# def full?(board)
#   !board.any? { |x| x == " " }
# end


def draw?(board)
  draw = nil
  if won?(board) == false  && full?(board) == true
    draw = true;
  else
    draw = false;
  end
end

# def draw?(board)
#   if !won?(board) && full?(board)
#     return true
#   elsif !won?(board) && !full?(board) || !won?(board)
#     return false
#   end
# end