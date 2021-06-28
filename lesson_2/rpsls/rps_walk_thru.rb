VALID_CHOICES = ["rock", "paper", "scissors"]

def win?(player1, player2)
  (player1 == "rock" && player2 == "scissors") ||
  (player1 == "paper" && player2 == "rock") ||
  (player1 == "scissors" && player2 == "paper")
end

def display_result(user_name, user_choice, computer_choice)
  if win?(user_choice, computer_choice)
    prompt "#{user_name} Won!"
  elsif win?(computer_choice, user_choice)
    prompt "Computer Won!"
  else
    prompt "Its a tie!"
  end
end

def prompt(message)
  puts "=> #{message}"
end

prompt "Enter your name:"
user_name = gets.chomp

loop do # main loop
  user_choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    user_choice = gets.chomp

    break if VALID_CHOICES.include?(user_choice)
    prompt "Thats not a valid choice!"
  end

  computer_choice = VALID_CHOICES.sample

  prompt "User Chose: #{user_choice}, Computer Chose: #{computer_choice}"
  display_result(user_name, user_choice, computer_choice)

  prompt "Do you want to play again? (y/yes, n/no)"
  answer = gets.chomp

  break unless answer.downcase.start_with?("y")
end

prompt "Thank you for playing. Goodbye!!"
