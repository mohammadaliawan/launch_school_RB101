=begin
  
Write a method that takes two arguments, a string and a positive integer, 
and prints the string as many times as the integer indicates.

Example:
  
repeat('Hello', 3)

Output:

Hello
Hello
Hello

# PEDAC

U:
- A method that takes two arguments
- one string, one integer
- prints the string integer number of times
- input: one string, one integer
- output: the string printed integer number of times on seperate line4s
Explicit:
- write a method that takes
- two arguments
- the method should print the string integer number of times
Implicit: (from the test case)
- first string and second integer
- string should be printed on seperate lines with no lines in between

Questions:
- What should the method return? meaningful value?
No meaningful value
- What should the method do if only the string is passed?
Default integer value is 0 and print error message: "Integer not provided!"
- What should the method do if only the integer is passed?
Default string value is error message : "String not provided" printed once only
- What if the first argument is not a string?
give error message: "First argument is not a string" printed once only
- What if the second argument is not an integer?
give error message: "Second argument is not an integer!"


DS:
inputs:
- first string and second integer
OR edge cases:
- first not a string and second integer
- firt string and second not an integer
- no inputs--> Default values
- only string provided
- only integer provided

Algo:

- Given two arguments
- Check if both arguments are passed
If both arguments are passed
  - convert the first to a string
  - Validate the second argument is an integer
  - If the second argument is a valid integer
    - print the string integer number of times
  - if second is not a valid integer
    - print error msg: "second argument is not a valid integer"
If integer is not passed
- print error message "Integer not provided"
if both not passed
- print error message "No Inputs given. Required input: first string, second integer "

Implementation details:

- Check if both arguments are passed
 - Use an if conditional to check if the first argument and second argument are the default values
    - print " No Inputs..."
  - else if string == default && integer != default
   - print "String not given"
  - else if stirng !- default && integer == default
    - print "Integer not given"



=end

DEFAULT_STR = "String not provided"
DEFAULT_INT = "Integer not provided"

def both_arguments_given?(str, int)
  if str == DEFAULT_STR && int == DEFAULT_INT
    puts "No Inputs given. Required input: first string, second integer "
  elsif str != DEFAULT_STR && int == DEFAULT_INT
    puts DEFAULT_INT
  else
    true
  end
end

def valid_int?(num)
  num.to_i == num
end

def repeat(str = DEFAULT_STR, int = DEFAULT_INT)
  if both_arguments_given?(str, int)
    if valid_int?(int)
      int.times do |_|
        puts str
      end
    else
      puts "Second argument is not a valid integer!"
    end
  end
end

repeat("Hello", 2)
repeat("Hello", 2.5)
repeat("Hello")
repeat(1,2)