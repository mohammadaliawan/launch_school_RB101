WINNING_SCORE = 5

VALID_CHOICES = {
  "r" => "rock",
  "p" => "paper",
  "sc" => "scissors",
  "l" => "lizard",
  "sp" => "spock"
}

VALID_CHOICES_MESSAGE = <<-MSG
Please Enter:
   'r'  for Rock
   'p'  for Paper
   'sc' for Scissors
   'l'  for Lizard
   'sp' for Spock
   MSG

WINNING_SCENARIOS = {
  "rock" => ["lizard", "scissors"],
  "paper" => ["rock", "spock"],
  "scissors" => ["lizard", "paper"],
  "lizard" => ["spock", "paper"],
  "spock" => ["rock", "scissors"]
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_user_choice?(user_choice)
  VALID_CHOICES.keys.include?(user_choice)
end

def get_user_choice
  loop do
    prompt(VALID_CHOICES_MESSAGE)
    user_choice = Kernel.gets.chomp.downcase
    return VALID_CHOICES[user_choice] if valid_user_choice?(user_choice)
    prompt("Incorrect Input! Please Enter a valid choice.")
  end
end

def get_computer_choice
  VALID_CHOICES.values().sample()
end

def round_result(user_choice, computer_choice)
  if WINNING_SCENARIOS[user_choice].include?(computer_choice)
    "User Wins!"
  elsif WINNING_SCENARIOS[computer_choice].include?(user_choice)
    "Computer Wins!"
  else
    "It's a Tie!"
  end
end

def display_goodbye
  prompt("Thank you for playing! Goodbye!")
end

def display_greeting
  prompt("Welcome to #{VALID_CHOICES.values().join(', ')}.")
  prompt("First to #{WINNING_SCORE} points Wins the Match!")
end

def play_round(round)
  prompt("**ROUND ---->>>> [#{round}]**")
  user_choice = get_user_choice()

  computer_choice = get_computer_choice

  prompt("User Chose: #{user_choice}, Computer Chose: #{computer_choice}")

  round_result(user_choice, computer_choice)
end

def update_score(score, round_result)
  case round_result
  when "User Wins!"
    score[:user] += 1
  when "Computer Wins!"
    score[:computer] += 1
  end
end

def someone_won?(score)
  score[:user] == WINNING_SCORE || score[:computer] == WINNING_SCORE
end

def display_score(score)
  prompt("Total Score: User: #{score[:user]} | Computer:#{score[:computer]}")
end

def display_grand_winner(score)
  if score[:user] == 5
    prompt("Congrats! You are the Grand Winner of this Match!")
  else
    prompt("Sorry you lost! Computer wins this Match!")
  end
end

display_greeting

score = { user: 0, computer: 0 }
round = 1

loop do
  round_result = play_round(round)

  prompt(round_result)

  update_score(score, round_result)

  display_score(score)

  break if someone_won?(score)
  round += 1
end

display_grand_winner(score)

display_goodbye
