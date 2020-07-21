# Define a method with:
# Input: two inputs, one string, one positive integer
# Output: print string integer number of times on seperate lines
# name of method : repeat()
# we need to define a method that will take a string and a postive integer as its arguments, 
# and print the provided string integer number of times on seperate lines.

# repeat("Hello", 3) -> prints "Hello" three times on seperate lines
# repeat("",3) -> print "" 3 times
# repeat(nil, 3) -> print "please provide a valid string input"
# repeat("Hello", 0) -> print "Please provide a positive integer"
# repeat("Hello", -2) -> print "Please provide a positive integer"
# repeat("Hello", 2.55) -> print "Please provide a positive integer"
# repeat("Hello", -2.55) -> print "Please provide a positive iteger"

# Pseudocode:
# given a string str and a number num
# if (str != nil) && (num.to_i == num) && (num > 0)
#  while num > 0
#   puts str
#  end
# end
# puts "Please provide a valid string" if str == nil
# puts "Please provide a positive integer" if num == 0
# puts "Please provide a positive integer" if num < 0
# puts "Please provide a positive integer" if num.to_i != num

def repeat(str, num)
  if (str != nil) && (num.to_i == num) && (num > 0)
    counter = num
    while counter > 0 do
      puts str
      counter -= 1
    end
  end
  puts "Please provide a valid string" if str == nil
  puts "0 was provied. Please provide an integer greater 0." if num == 0
  puts "Negative number was provided. Please provide a positive integer only" if num < 0
  puts "Floating point number was provided. Please provide a positive integer only " if num.to_i != num
end

repeat("Hello", 6)
# repeat("Ali", 5)
# repeat("",3)
# repeat(nil, 3)
# repeat("Hello", 0)
# repeat("Hello", -2)
# repeat("Hello", 2.55)
# repeat("Hello", -2.55)
# repeat(nil, -2.55)