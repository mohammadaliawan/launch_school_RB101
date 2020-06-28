VALID_CHOICES = %w(rock paper scissors)

def test_method
  prompt("This is a test!")
end

test_method()

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
  (first == "scissors" && second == "paper") ||
  (first == "paper" && second == "rock")
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

# rock vs paper
# rock vs scissors
# rock vs rock
