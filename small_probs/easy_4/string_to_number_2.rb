=begin
The String#to_i method converts a string of numeric characters
(including an optional plus or minus sign) to an Integer.
String#to_i and the Integer constructor (Integer()) behave similarly.
In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a string
to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way
and calculate the result by analyzing the characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

PEDAC

- input: string of digits
- output: integer

Requirements & Rules:
- Explicit:
- Dont use to_i or Integer
- no invalid characters
- no + or - signs

DS:
input: string
output: integer
look-up: hash {"1"=> 1...}

Algorithm:

- Given a string of digits
- Get the equivalent integer values and store them
- join the integer values into a final equivalent integer

Implementation details:

Subprocess: Get the equivalent integer values and store them
- create a look up dictionary using a hash {"1"=> 1...} # look_up_dictionary
- create an empty collection to store the equivalent integer values for each char in the string # integers_collection

- evaluate each character of the string and look up its equivalent integer
value in the dictionary
      - convert the string to an array of characters and loop through the array
        - on each iteration look up the current character's integer value
        - store it in the empty collection

Subprocess: join the integer values into a final equivalent integer

input: array of integers
output: integer

ALgo:
- sum = 0
- Reverse the array of numbers
- loop through the array of integers
  for each digit multuply it with its place value
    and add it to the sum




=end

INTEGER_LOOK_UP = ("0".."9").to_a.zip((0..9).to_a).to_h

def find_integer_values(string_of_digits)
  integers_collection = []

  string_of_digits.chars.each do |char|
   integers_collection << INTEGER_LOOK_UP[char]
  end
  integers_collection
end

def calculate_sum(integers_collection)
  sum = 0
  integers_collection.reverse.each_with_index do |num, i|
    place_value = num * (10**i)
    sum += place_value
  end
  sum
end

def string_to_integer(string_of_digits)
integers_collection = find_integer_values(string_of_digits)

integer = calculate_sum(integers_collection)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
