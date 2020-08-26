=begin
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false


input: string
output: boolean, true if palindrome, false otherwise

Rules:
Explicit:
- one argument to the method which is going to be a string
- return true if the string is a palindrome
- a palindtome reads the same forward and backward
- case does not matter (downcase the string)
- ignore all non-alpha numeric chars including spaces

Implicit
- arguments can be a string of numbers, treat the same as any other string

Questions:
empty string? -> return true

Ds:
input: a string
output: boolean

Algo:

- Clean the string  (delete all irrelevent characters)
   transfer all the valid characters to a new string
    - make a copy of the original string with all character downcased
    - a new_str = ""
    - valid characters are ("a".."z" and "0".."9")
    - iterate through the original string
        if char is a valid string, transfer to a new str
- Check if the cleaned string is a palindrome
   The palidrome method

=end

VALID_CHARS = ("a".."z").to_a + ("0".."9").to_a

def valid_string(org_string)
  str = org_string.downcase
  
  valid_chars_array = str.chars.select {|char| VALID_CHARS.include?(char)}
  
  valid_chars_str = valid_chars_array.join
end

valid_string("Madam, I'm Adam")

def real_palindrome?(org_string)
  valid_chars_str = valid_string(org_string)
  
  valid_chars_str == valid_chars_str.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
