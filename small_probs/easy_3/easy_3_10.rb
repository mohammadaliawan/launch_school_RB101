=begin
Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

Examples:

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

Problem:
Given an integer, determine if it is a palindrome.

Data Structures: Input: Integer
Output: boolean

Algorithm:

Create a hash with numbers as keys and string versions as values.

Convert integer to string version of integer.
  Initialize an empty array
  Iterate through the integer (using the #digits method to convert to an array of digits)
  Push into the empty array the String version of the integer
  Return that array
    Use #join method to convert to a string version of the original integer

Check if original number is palindrome


=end

 NUMBERS_TO_WORDS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def convert_int_to_str(original_integer)
  array_of_str = []
  original_integer.digits.each do |digit|
    digit
end
  

str_num = convert_int_to_str(original_integer)