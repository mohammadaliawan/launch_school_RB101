VALID_CHOICES = %w(r p sc l sp)

# Sc vs Sp => Sp
# Sc vs P => Sc
# Sc vs R => R
# Sc vs L => Sc

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "r" && second == "sc") ||
  (first == "sc" && second == "p") ||
  (first == "p" && second == "r") ||
  (first == "r" && second == "l") ||
  (first == "l" && second == "sp") ||
  (first == "sp" && second == "sc") ||
  (first == "sc" && second == "l") ||
  (first == "l" && second == "p") ||
  (first == "p" && second == "sp") ||
  (first == "sp" && second == "r") 
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Win!")
  elsif win?(computer, player)
    prompt("Computer Won!")
  else
    prompt("It's a Tie!")
  end
end

def invalid_name?(user_name) 
  user_name.empty?() || /^ +$/.match(user_name)
end

def get_player_name
  loop do
    prompt("Enter Player's Name: ")
    player_name = Kernel.gets().chomp()
    return player_name unless invalid_name?(player_name)
    prompt("Error! Please enter a valid name.")
  end
end

prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock!")  

player_name = get_player_name()

loop do


  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    break if VALID_CHOICES.include?(choice)
    prompt("Thats not a valid choice!")
  end

  computer_choice = VALID_CHOICES.sample()

  prompt("You Chose: #{choice}, Computer Chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to play again? Enter Yes or No.")
  answer = Kernel.gets().chomp().downcase

  break unless answer.start_with?("y")
end

prompt("Thank you for playing!")