


WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

<<<<<<< HEAD
=======

def is_array_empty(board)
  board.all? {|c| (c==" ")||(c=="")}
end

>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
def full?(board)
 board.all? {|c| (c=="X")||(c=="O")}
end

def over?(board)
  in_progress= false
<<<<<<< HEAD
  if(won?(board)||draw?(board)||full?(board))
 return true
 end
  if full?(board)==false 
  return false
  end

=======
  if((won?(board).class==Array)||(draw?(board)==true)||(full?(board)==true))
 in_progress=true
 end
  if((full?(board)==false))
  in_progress= false
  end
return in_progress
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
end

def winner(board)
  
if won?(board)
  
  return board[won?(board)[0]]
 end
end


def won?(board)
  
<<<<<<< HEAD
  is_empty = board.none? { |c| c=="O" || c=="X" }
 if(is_empty)
=======
 if((is_array_empty(board)==true)||(board == nil))
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
  return false
 else

  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    

     if(((position_1=="X")&&(position_2=="X")&&(position_3=="X"))||((position_1=="O")&&(position_2=="O")&&(position_3=="O")))
      
    return win_combination
<<<<<<< HEAD

    end
  
  end
  false
 end

=======
    
    else
      
      false
      
    end
  
  end
 end
 false
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
end

def position_taken?(board,index)
  if board[index]=="X" || board[index]=="O"
  true
else
  false
 end
end

def valid_move?(board, index)
  if((index.between?(0,8)) && !(position_taken?(board,index)))
    true
  else
    false
 end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
num = (user_input.to_i - 1)
end

def move(board, position,player)
 board[position]=player
<<<<<<< HEAD
=======
 board
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
end

def turn_count(board) 
 counter =0
 board.each do |turns|
   if ((turns=="X")||(turns=="O"))
     counter+=1
   end
end
counter
end


def current_player(board)
  total_turns = turn_count(board)
    (total_turns.even?) ? "X" : "O"
  
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board,index)
    move(board, index, current_player(board))
  else
    turn(board)
  end
  display_board(board)
end

def draw?(board)
<<<<<<< HEAD
 !won?(board) && full?(board) ? true: false
=======
 if !won?(board) && full?(board)
 return true
 elsif !won?(board)==false && !full?(board)
 return false
 else won?(board)
   return false
end
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
end

def play(board)

until over?(board)
current_player(board)
turn(board)
end
if(won?(board))
  puts "Congratulations #{winner(board)}!"
else 
<<<<<<< HEAD
  puts "Cat's Game!"
=======
  puts "Cats Game!"
>>>>>>> 6aeee668f4ec1fe554a41f849d6da336e7b250f1
end
end




















