

VALID_CHOICES = { "r" => "rock",
                  "p" => "paper",
                  "sc" => "scissors"
                }

VALID_CHOICES_MESSAGE = <<-MSG
'r' or 'R' for Rock
   'p' or 'P' for Paper
   'sc' or 'SC' for Scissors
   MSG

WINNING_SCENARIOS = { 
  "paper"    => "rock",
  "rock"     => "scissors",
  "scissors" => "paper"
}

LOOSING_SCENARIOS = {
  "rock"     => "paper"
  "scissors" => "rock"
  "paper"    => "scissors" 
}

TIEING_SCENARIOS = {
  "rock" => "rock",
  "paper" => "paper",
  "scissors => scissors"
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_choice?(user_choice)
  VALID_CHOICES.keys.include?(user_choice)
end

def get_user_choice
  prompt("Please enter your choice: ")
  loop do
    prompt(VALID_CHOICES_MESSAGE)
    user_choice = Kernel.gets().chomp().downcase()
    return VALID_CHOICES[user_choice] if valid_choice?(user_choice)
    system('clear')
    prompt("Incorrect Input! Please Enter a valid choice as below")
  end
end

def set_computer_choice
  VALID_CHOICES.values().sample()
end

def find_result(user_choice, computer_choice)
  if WINNING_SCENARIOS[user_choice] == computer_choice
    "You Win!"
  elsif LOOSING_SCENARIOS[user_choice] == computer_choice
    "Computer Wins!"
  else
    "It's a Tie!"
  end
end

def display_result(result)
  prompt(result)
end

def valid_ans_again?(play_again_response)
  %w(y yes n no).include?(play_again_response)
end

def get_play_again
  prompt("Would you like to play again? (Enter y/yes or n/no)")
  loop do
    play_again_response = Kernel.gets().chomp().downcase()
    return play_again_response if valid_ans_again?(play_again_response)
    prompt("Invalid answer! Please enter y/yes or n/no only")
  end
end

def display_goodbye
  prompt("Thank you for playing! Goodbye!")
end

loop do
  user_choice = get_user_choice()

  computer_choice = set_computer_choice()

  both_choices = "Player Chose: #{user_choice.capitalize()}, Computer Chose: #{computer_choice.capitalize()}"
  prompt(both_choices)

  result = find_result(user_choice, computer_choice)

  display_result(result)

  play_again_response = get_play_again()

  break if ["no", "n"].include?(play_again_response)
  system('clear')
end

display_goodbye()
