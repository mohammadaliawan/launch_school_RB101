WINNING_SCENARIOS = { 
  "rock"     => [ "lizard", "scissors" ],
  "paper"    => [ "rock", "spock" ],
  "scissors" => [ "lizard", "paper" ],
  "lizard"   => [ "spock", "paper" ],
  "spock"    => [ "rock", "scissors" ]
}

def find_result(user_choice, computer_choice)
  if WINNING_SCENARIOS[user_choice].include?(computer_choice)
    "User Wins!"
  elsif WINNING_SCENARIOS[computer_choice].include?(user_choice)
    "Computer Wins!"
  else
    "It's a Tie!"
  end
end

p find_result("rock", "paper") == "Computer Wins!"
p find_result("rock", "scissors") == "User Wins!"
p find_result("rock", "lizard") == "User Wins!"
p find_result("rock", "spock") == "Computer Wins!"
p find_result("rock", "rock") == "It's a Tie!"

p find_result("paper", "rock") == "User Wins!"
p find_result("paper", "scissors") == "Computer Wins!"
p find_result("paper", "spock") == "User Wins!"
p find_result("paper", "lizard") == "Computer Wins!"
p find_result("paper", "paper") == "It's a Tie!"

p find_result("scissors", "rock") == "Computer Wins!"
p find_result("scissors", "scissors") == "It's a Tie!"
p find_result("scissors", "spock") == "Computer Wins!"
p find_result("scissors", "lizard") == "User Wins!"
p find_result("scissors", "paper") == "User Wins!"

p find_result("lizard", "rock") == "Computer Wins!"
p find_result("lizard", "paper") == "User Wins!"
p find_result("lizard", "scissors") == "Computer Wins!"
p find_result("lizard", "lizard") == "It's a Tie!"
p find_result("lizard", "spock") == "User Wins!"

p find_result("spock", "rock") == "User Wins!"
p find_result("spock", "paper") == "Computer Wins!"
p find_result("spock", "scissors") == "User Wins!"
p find_result("spock", "lizard") == "Computer Wins!"
p find_result("spock", "spock") == "It's a Tie!"


