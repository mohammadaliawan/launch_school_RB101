=begin
Write another method that returns true if the string passed as an argument is a palindrome,
false otherwise. This time, however, your method should be case-insensitive,
and it should ignore all non-alphanumeric characters. If you wish,
you may simplify things by calling the palindrome? method you wrote in the previous exercise.

Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes a string as an argu
- returns true or false
- true if the argu is a palindrome
- case insensitive
- ignore non alpha numeric chars

**Implicit**
- spaces dont matter

**Special Terms**
-

**Questions**
- input is "" => true
-

- Input: string
- Output/return: boolean

**Data Structures**
- input: string
- Output: boolean
- Intermediate: array of chars
- Storage:

**Algorithm**
- convert the string to lowercase
- extract all the alpha numeric chars to a new string
- if the new string reversed is equal to the new string
  - return true
  otherwise return false.

**Implementation details**

- create an array of all alphanumeric chars
- ALPHA_NUM = ("a".."z") + ("1".."9")

subprocess:
 - extract all the alpha numeric chars to a new string
  - create a new empty array of selected_char
  - split the string into its chars # chars_array
  - Iterate through the chars_array
    if ALPHA_NUM includes current char
      - append that char to selected_chars
  - join the selected chars to a string

 - palindrome?(clean_str)

=end

ALPHA_NUM = ("a".."z").to_a + ("1".."9").to_a

def palindrome?(argu)
  argu == argu.reverse
end

def clean_string(str)
  str.chars.select {|char| ALPHA_NUM.include?(char)}.join
end

def real_palindrome?(str)
  palindrome?(clean_string(str.downcase))
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false