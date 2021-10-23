require 'pry'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

def prompt(msg)
  puts "--|>> #{msg}"
end

def display_board(board)
  system 'clear'
  puts "     |     |     "
  puts "  #{board[1]}  |  #{board[2]}  |  #{board[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[4]}  |  #{board[5]}  |  #{board[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{board[7]}  |  #{board[8]}  |  #{board[9]}  "
  puts "     |     |     "
end

def empty_squares(board)
  board.keys.select{|square| board[square] == INITIAL_MARKER}
end

def retrieve_player_choice(board)
  player_choice = ""
  loop do
    prompt("Choose a Square: #{empty_squares(board).join(",")}")
    player_choice = gets.chomp.to_i
    return player_choice if empty_squares(board).include?(player_choice)
    prompt("That's not a valid choice!")
  end
end

def retrieve_computer_choice(board)

end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = " "}
  new_board
end

def player_places_piece!(board)
  square = retrieve_player_choice(board)
  board[square] = PLAYER_MARKER
end

def computer_places_piece!(board)
  square = empty_squares(board).sample
  board[square] = COMPUTER_MARKER
end

def play_again
  loop do
    prompt("Would you like to play again? Enter y/yes or n/no")
    ans = gets.chomp.downcase
    return ans if %w(y yes n no).include?(ans)
  end
end

def someone_won?(board)
  !!detect_winner(board)
end

def detect_winner(board)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9]] +
                  [[1,4,7], [2,5,8], [3,6,9]] +
                  [[1,5,9], [3,5,7]]

  winning_lines.each do |line|
    if board[line[0]] == COMPUTER_MARKER &&
       board[line[1]] == COMPUTER_MARKER &&
       board[line[2]] == COMPUTER_MARKER
       return "Computer"
    elsif board[line[0]] == PLAYER_MARKER &&
         board[line[1]] == PLAYER_MARKER &&
         board[line[2]] == PLAYER_MARKER
        return "Player"
    end
  end
  nil
end

def board_full?(board)
  empty_squares(board).empty?
end

# main loop ----------------------------------------------------------------------------

# loop do
  board = initialize_board
  display_board(board)

  loop do
    display_board(board)
    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!!"
  else
    prompt "It's a Tie!!"
  end
#   user_ans = play_again

#   break if %w(n no).include?(user_ans)
# end