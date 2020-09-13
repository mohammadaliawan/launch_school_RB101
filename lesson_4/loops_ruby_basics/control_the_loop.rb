iterations = 1

loop do # invoking the Kernel#loop method
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end