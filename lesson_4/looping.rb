colors = ['green', 'blue', 'purple', 'orange']

counter = 0
loop do
  puts colors[counter]
  counter += 1

  break if counter >= colors.length
end