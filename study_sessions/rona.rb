=begin

Create a RPSLS game. User will play against the computer. The first to score 5 points wins the match.

Algorithm:

round of the game:
- Get the user's choice
  - display the valid choices and the input method
  - ask the user for his choice
  - validate the choice
  - Keep asking user for valid choice until get valid choice
- Set the computer's choice
 - take a random sample from valid choices
- Determine who won the round
  - store the winning moves
  - if users_choice is winning moveg 
     return "User Won"
     elsif computer_choice is winning move
     return "computer won"
     else
      return "It's a Tie"

-Check if one of the score has reached 5
   display the grand winner and
  - exit the game.
  else
    execute next round
=end

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

def prompt(str)
  puts "=> #{str}"
end

def valid_choice?(user_choice)
  
  
end

def get_user_choice
  loop do
    prompt(VALID_CHOICES_MESSAGE)
    user_choice = gets.chomp
    
    return user_choice if valid_choice?(user_choice)
  end
end

def set_comp_choice
  
  
end

def (player_choice, computer_choice)
  
end
