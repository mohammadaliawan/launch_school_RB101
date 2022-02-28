=begin

The String#to_i method converts a string of numeric characters (including an optional plus
or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave
similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an integer.
you may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid
characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to
convert a string to a number, such as String#to_i, Integer(), etc.
Your method should do this the old-fashioned way and calculate the result by analyzing the
characters in the string.

Examples

string_to_integer('4321') == 4321
string_to_integer('570') == 570

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes a string of digits
- returns the appropriate number as an integer
- no + or - signs
- number validation not required
- assume all chars will be numeric
- cannot use to_i() or the Integer().
- analyze the chars in the string

**Implicit**
- appropriate number as an integer:
  - input string number is in decimal number form
  - output string shall also be in decimal number form

**Special Terms**
-

**Questions**
-

- Input: numeric string in decimal format
- return: integer in decimal format

**Data Structures**
- input: string
- Output: integer
- Intermediate: array
- Storage: hash

**Algorithm**
- create a dictionary for looking up the integer for a digit char
- STRING_TO_DIGIT = {"0" => 0, "1" => 1, ...}
- split the string into char digits
- Transform the char digits to numeric digits
- Muliplty each element of the numeric digits array with their place value
- and add up all the result

**Implementation details**
- STRING_TO_DIGIT = #zip {}

- Transform the char digits to numeric digits
- %w(1, 2 3).map{}

- reverse the array of digits
- iterate through the reverse array of digits
  - multiply each digit with 10**current_index
  - store the resulting num in aa new array

=end
STRING_TO_DIGIT = ('0'..'9').to_a.zip((0..9).to_a).to_h


def string_to_integer(string_num)
 digits_array = string_num.chars.map do |char_digit|
    STRING_TO_DIGIT[char_digit]
  end

  digits_array.reverse.map.with_index do |digit, index|
    digit * (10**index)
  end.reduce(:+)
end


p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570
