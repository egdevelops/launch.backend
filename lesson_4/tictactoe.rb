# Tic Tac Toe Game

# require 'pry' # debugging tool by placing '.binding pry' where I need the code to stop and analyze.

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X' # CONSTANTS used in place of hard-coding within program body
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display(brd) # passing in 'brd' hashes that will create keys for square positions
  system 'clear' # clears board and then continues to display updated board
  puts "You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts "                           "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {} # creates data structure (hash) for new board with keys as integers representing board position
  (1..9).each { |num| new_board[num] = INITIAL_MARKER } # syntax for creating new key/value pair #key is integer (1..9) representing square position, value is space (' ')
  new_board # returns new board hash
end

def empty_squares(brd) # method that will define empty squares
  brd.keys.select { |num| brd[num] == INITIAL_MARKER } # takes key values from board and select fulfills specific loop body criteria in this case: when brd number is 'INITIAL MARKERS' empty (' ') and returns new array.
end

def player_move!(brd) # method that outlines players move
  square = '' # initialize variable outside of loop to make available after loop break
  loop do
    prompt "Choose your square (#{empty_squares(brd).join(', ')})"
    square = gets.chomp.to_i # takes users string input and converts to integer
    break if empty_squares(brd).include?(square) # breaks loop if 'empty_squares' method includes players input 'square' move.
    prompt "Please choose a valid square." # if players 'square' move is not included then it is not a valid square.
  end
  brd[square] = PLAYER_MARKER # 'PLAYER_MARKER' CONTSTANT ('X') is placed on brd
end

def computer_move!(brd)
  square = empty_squares(brd).sample # sample (method in Array class) randomly chooses from options in 'empty_square' array
  brd[square] = COMPUTER_MARKER # empty square returns array of integers so no need to convert
end

def board_full?(brd)
  empty_squares(brd) == [] # select method returns empty array if no options fit criteria
end

def game_won?(brd) # since method has question mark we want it to return boolean not an incidental true in the form of 'Player' or 'nil'
  !!winner?(brd)
end

def winner?(brd) # method to find winner. Create arrays with winning lines and assign to variable
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]] # diagonals
  
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
  # if brd.values_at(*line).count(PLAYER_MARKER) == 3 # *(splat operator) method in Array class used when passing an array as set of arguments into another method. Equivalent to passing in elements of array seperately.
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

loop do
  board = initialize_board # will return new_board hash which is local variable to 'initialize_board' method.

  loop do
    display(board)
    player_move!(board) # since method mutates it is available outside of method
    break if game_won?(board) || board_full?(board)
    computer_move!(board)
    break if game_won?(board) || board_full?(board)
  end

  display(board)

  if game_won?(board)
    prompt "#{winner?(board)} won!"
  else
    prompt "The game is tied."
  end

  prompt "Play again? 'y' or 'n'"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing"
