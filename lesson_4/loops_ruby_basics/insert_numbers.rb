numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i

  numbers << input

  break if numbers.count >= 5
end

p numbers

