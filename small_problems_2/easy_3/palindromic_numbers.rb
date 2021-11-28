=begin

Write a method that returns true if its integer argument is palindromic,
false otherwise. A palindromic number reads the same forwards and backwards.

Examples:

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true


**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes an integer argum
- returns a boolean
- returns true if argu is palindrome
- false otherwise
- definition of palindromic number:A palindromic number reads the same forwards and backwards.
-

**Implicit**
- 0 at the end matters
- a single digit integer returns true

**Special Terms**
-

**Questions**
-

- Input: integer
- return: true if argu number is a palindrome

**Data Structures**
- input: integer
- Output: boolean
- Intermediate: string
- Storage:

**Algorithm**
- convert the argu integer to a string
- reverse the string_num
- if reversed string num is equal to the string num
    return true
- otherwise return false

**Implementation details**
-

=end

def palindromic_number?(num)
  str_num = num.to_s

  str_num == str_num.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true