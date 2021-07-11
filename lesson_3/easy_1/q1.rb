=begin
What would you expect the code below to print out?

Line 13 outputs the string representation of integers 1, 2, 2 and 3 on seperate consecutive lines.


=end

numbers = [1, 2, 2, 3]

numbers.uniq # [1.2,3]

puts numbers # [1, 2, 2, 3]