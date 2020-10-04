loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "Thats correct!"
    break
  else
    puts "Incorrect Answer! Try Again?"
  end
end