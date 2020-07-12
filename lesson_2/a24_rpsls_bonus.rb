require 'pry'

WINNING_SCORE = 5

VALID_CHOICES = { 
  "r"  => "rock",
  "p"  => "paper",
  "sc" => "scissors",
  "l"  => "lizard",
  "sp" => "spock"
}

VALID_CHOICES_MESSAGE = <<-MSG
'r'  for Rock
   'p'  for Paper
   'sc' for Scissors
   'l'  for Lizard
   'sp' for Spock
   MSG

WINNING_SCENARIOS = { 
  "rock"     => [ "lizard", "scissors" ],
  "paper"    => [ "rock", "spock" ],
  "scissors" => [ "lizard", "paper" ],
  "lizard"   => [ "spock", "paper" ],
  "spock"    => [ "rock", "scissors" ]
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_user_choice?(user_choice)
  VALID_CHOICES.keys().include?(user_choice)
end

def get_user_choice
  prompt("Please enter your choice: ")
  loop do
    prompt(VALID_CHOICES_MESSAGE)
    user_choice = Kernel.gets().chomp().downcase()
    return VALID_CHOICES[user_choice] if valid_user_choice?(user_choice)
    prompt("Incorrect Input! Please Enter a valid choice as below")
  end
end

def get_computer_choice
  VALID_CHOICES.values().sample()
end

def find_result(user_choice, computer_choice)
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

def invalid_name?(user_name)
  user_name.empty?() || /^ +$/.match(user_name)
end

def greet
  prompt("Welcome to #{VALID_CHOICES.values().join(', ')}.")
end

def get_user_name
  prompt("Please enter your name:")
  loop do
    user_name = Kernel.gets().chomp().capitalize()
    return user_name unless invalid_name?(user_name)
    prompt("Please Enter a Valid Name!")
  end
end

def new_round
  user_choice = get_user_choice()

  computer_choice = get_computer_choice()

  both_choices = "User Chose: #{user_choice.capitalize()}, Computer Chose: #{computer_choice.capitalize()}"
  prompt(both_choices)

  round_result = find_result(user_choice, computer_choice)
end

def update_score(score, round_result)
  case round_result
  when "User Wins!"
    score[:user] += 1
  when "Computer Wins!"
    score[:computer] += 1
  end
end

def next_round?(score)
  score[:user] < WINNING_SCORE && score[:computer] < WINNING_SCORE
end

def display_score(score)
  prompt("Total Score: User -> #{score[:user]} | Computer -> #{score[:computer]}")
end

def display_grand_winner(score)
  if score[:user] == 5 
    prompt("Congrats! You are the Grand Winner of this Match!")
  else
    prompt("Sorry you lost! Computer wins this Match!")
  end
end

greet()
user_name = get_user_name()

score = {user: 0, computer: 0}

loop do
  round_result = new_round()
  
  system('clear')

  prompt(round_result)

  update_score(score, round_result)

  display_score(score)

  break unless next_round?(score)
end

display_grand_winner(score)

display_goodbye()