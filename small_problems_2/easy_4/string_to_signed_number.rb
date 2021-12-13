=begin
Write a method that takes a String of digits, and returns the appropriate number as an integer.
The String may have a leading + or - sign; if the first character is a +,
your method should return a positive number;
if it is a -, your method should return a negative number.
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby,
such as String#to_i, Integer(), etc. You may, however,
use the string_to_integer method from the previous lesson.

Examples

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes a string of digits as argument
- returns the appropriate number as integer
- if the first character is a +, return a positive number
- if the first character is a -, return a negative number
- if no sign, return a positive number
- assume the string will always contain a valid number

**Implicit**
-

**Special Terms**
- returns the appropriate number as integer:
  - given number is in decimal number format
  - returned number shall also be in decimal number format

**Questions**
-

- Input: string
- return: integer decimal format

**Data Structures**
- input: string
- Output: integer
- Intermediate: array
- Storage: look up dictionary -> hash

**Algorithm**
-create a dictionary for looking up the integer for a digit char
- STRING_TO_DIGIT = {"0" => 0, "1" => 1, ...}
- split the string into a list of digit chars
  - if the string starts with a - or +
    - remove first char from the list
    - sign = first char of the list
- Transform the char digits to numeric digits
- Muliplty each element of the numeric digits array with their place value
- and add up all the result
- if sign == "-"
   multiply result by -1
   return the result
  otherwise
    return the result as it is

**Implementation details**
-

=end

STRING_TO_DIGIT = ('0'..'9').to_a.zip((0..9).to_a).to_h


def string_to_signed_integer(string_num)
  case string_num[0]
  when '-' then -string_to_integer(string_num[1..-1])
  when '+' then string_to_integer(string_num[1..-1])
  else          string_to_integer(string_num)
  end

end

def string_to_integer(string_num)
  digits_chars = string_num.chars

  # if %w(+ -).include?(digits_chars.first)
  #   sign = digits_chars.shift
  # end

  digits_array =  digits_chars.map do |char_digit|
    STRING_TO_DIGIT[char_digit]
  end

 integer = digits_array.reverse.map.with_index do |digit, index|
    digit * (10**index)
  end.reduce(:+)

  # if  sign == "-"
  #   -integer
  # else
  #   integer
  # end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
