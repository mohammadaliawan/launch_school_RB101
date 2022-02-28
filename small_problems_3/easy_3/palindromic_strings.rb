=begin

Write a method that returns true if the string passed as an argument is a palindrome,
false otherwise. A palindrome reads the same forward and backward. For this exercise,
case matters as does punctuation and spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- returns a boolean true or false
- true if string argu is a palindrome
- palindrome : reads the same forwards and backward
- case, punctiation and spaces matter

**Implicit**
-

**Special Terms**
- special chars? yes they matter

**Questions**
-

- Input: string
- Output/return: boolean

**Data Structures**
- input: string
- Output: boolean
- Intermediate:
- Storage:

**Algorithm**
- reverse the given string
- if given string equals the reversed string
  return true
  otherwise return false


**Implementation details**
- #reverse
- String#== or eql?

=end

def palindrome?(argu)
  argu == argu.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1,2,3,2,1]) == true