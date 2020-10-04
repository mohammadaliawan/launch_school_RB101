iterations = 1

loop do # invoking the Kernel#loop method
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1
end