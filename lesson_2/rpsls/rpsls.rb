VALID_CHOICES = {  'r' => 'rock',
                   'p' => 'paper',
                   'sc' => 'scissors',
                   'l' => 'lizard',
                   'sp' => 'spock' }

WINNING_SCENARIOS = {  'rock' => ['lizard', 'scissors'],
                       'paper' => ['rock', 'spock'],
                       'scissors' => ['paper', 'lizard'],
                       'lizard' => ['paper', 'spock'],
                       'spock' => ['rock', 'scissors'] }

ROUND_RESULT = {  user_won: "User Won!",
                  computer_won: "Computer Won!",
                  tie: "It's a Tie!" }

WINNING_SCORE = 5

def prompt(message)
  puts "=> #{message}"
end

def win?(player1, player2)
  WINNING_SCENARIOS[player1].include?(player2)
end

def find_round_result(user_choice, computer_choice)
  if win?(user_choice, computer_choice)
    :user_won
  elsif win?(computer_choice, user_choice)
    :computer_won
  else
    :tie
  end
end

def retrieve_user_choice
  loop do
    prompt "Choose one: #{VALID_CHOICES.values.join(', ')}"
    user_choice = gets.chomp

    return user_choice if VALID_CHOICES.values.include?(user_choice)
    prompt "Thats not a valid choice!"
  end
end

def retrieve_computer_choice
  VALID_CHOICES.values.sample
end

def choices(user_choice, computer_choice)
  "User Chose: #{user_choice}, Computer Chose: #{computer_choice}"
end

def play_round(round_number)
  prompt "Round no. #{round_number}"

  user_choice = retrieve_user_choice

  computer_choice = retrieve_computer_choice

  prompt choices(user_choice, computer_choice)

  find_round_result(user_choice, computer_choice)
end

def someone_won?(score)
  score.values.include?(WINNING_SCORE)
end

def update_score(result_round, score)
  case result_round
  when :user_won
    score[:user] += 1
  when :computer_won
    score[:computer] += 1
  end
end

def print_grand_winner(score)
  if score[:user] == WINNING_SCORE
    prompt "User is the grand winner!"
  elsif score[:computer] == WINNING_SCORE
    prompt "Computer is the grand winner!"
  end
end

def play_again
  prompt "Do you want to play again?"
  answer = ''

  loop do
    prompt 'Enter y/yes or n/no!'
    answer = gets.chomp.downcase

    return answer if ['y', 'yes', 'n', 'no'].include?(answer)
    prompt "Invalid Entry! "
  end
end

prompt "Welcome to #{VALID_CHOICES.values.join(', ')}"

loop do # Main loop
  score = { user: 0, computer: 0 }
  round_number = 1

  loop do
    result_round = play_round(round_number)

    prompt ROUND_RESULT[result_round]

    update_score(result_round, score)

    prompt "Current Score: User: #{score[:user]}, Computer: #{score[:computer]}"

    break if someone_won?(score)
    round_number += 1
  end

  print_grand_winner(score)

  break unless ['y', 'yes'].include?(play_again)
end

prompt "Thank you for playing. Goodbye!!"
# (player1 == "rock" && player2 == "scissors") ||
# (player1 == "paper" && player2 == "rock") ||
# (player1 == "scissors" && player2 == "paper") ||
# (player1 == "rock" && player2 == "lizard") ||
# (player1 == "lizard" && player2 == "spock") ||
# (player1 == "spock" && player2 == "scissors") ||
# (player1 == "scissors" && player2 == "lizard") ||
# (player1 == "spock" && player2 == "rock") ||
# (player1 == "paper" && player2 == "spock") ||
# (player1 == "lizard" && player2 == "paper")
