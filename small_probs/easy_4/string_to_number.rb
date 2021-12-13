=begin

The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

Examples

​

# Problem:

Input: a string of digits
Ouput: an integer(made up of the digits in the input string)

Rules:
- Dont use to_i or Integer()
- No leading + or - signs in the input
- all characters in the string will be valid numeric chars

Questions:
- The string srgument: should it be considered as a decimal number if there is no prefix. 
  - Its a decimal number
- Should the return value of the method be a decimal number or some other format? 
    - return a decimal number
- If there is a zero in front of the number, do I consider it to be an octal number or do I disregard the 0.
  - Disregard the zero
  
DS:
input: a string
Output: an integer

Algo:

Given a string of digits
- COnvert the string of digits to an array of strings (string_digits_array)
- create a hash (digits_hash) that contains the key as the string digit and the value as the integer
    {"1" => 1, ....}
- Trasnform the sring_digits_array to an array of integers
  - map the string digit to the corresponding integer using the digits_hash
  - Store the array of integers
- COnvert the array of integers to an integer
  - Reverse the array of integers
  - init sum  0
  - Iterate through array of integers [1,2,3,4]
  - multiply each number with its corresponding place value in the decimal number system
  - add the above result to sum
  - end
  return sum(resulting integer)

=end


def string_to_integer(string_of_digits)
  string_digits_array = string_of_digits.chars
  
  digits_hash = ('0'..'9').to_a.zip((0..9).to_a).to_h
  
  array_of_integers = string_digits_array.map{|string_digit| digits_hash[string_digit]}

  # sum = 0

  # array_of_integers.reverse.each_with_index do |num, index|
  #  sum += num * (10**index)
  # end

  # sum
  
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
p string_to_integer('5') == 5
p string_to_integer('') == 0
p string_to_integer('0') == 0
p string_to_integer('000570') #== 570