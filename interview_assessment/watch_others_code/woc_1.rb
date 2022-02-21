=begin
Given a non-empty string check if it can be constructed by taking a substring of it
and appending multiple copies of the substring togather.
You may assume that the given string
contains lowercase english letters only.

Example-1
Input: "abab"
Ouput: True
Example-2
Input: "aba"
Output: False


# PEDAC

## The Problem

Input: string
Output: boolean i.e. true or false

**Restate**
- Given non empty string
- check if the given string can be formed using a single substring of it
and joining togather two or more copies of that substring
- given string has lowercase english letters only.

**Rules / Boundaries (Check test cases)**

**Explicit**
- given string is non empty
- form the given string from only one substring of the given string
- only lowercase english letters
- no spaces
- no special characters

** Terms **

- Substring: a substring is a contiguous sequence of chars in a string

**Implicit**
- Single letter substrings can be used
- "ababc" : "ababc" is not a substring of the given string
-


**Questions**

- Can a single letter substring be used to construct the given string?
- yes

** Data Structures**

- input: string
- Output: boolean
- Intermediate: array
- Storage:


**Algorithm**
- Given a non empty string containing only lowercase english letter
Subprocess - Find all possible substrings that could be used
- Find all the substrings that could possibly be multiplied to form the given string
  - possible substrings:
      - start with the first char,
      - the largest possible length of the substring is half the length of the given string
Subprocess - Check if any of the found substrings can used to form the given string
- For each substring
  - check if it can be used to construct the given string by
    concantenating multiple copies of it
    - number of possible copies that will need to be made:
      - length of given string divided by length of string

** Implementation details **

 Subprocess - Find all possible substrings that could be used

 iterate over the length of the required substring from 1 to half the length of the given string
  - store all the substring in an array using the String#[]
  - for even sized string its fine
  - for odd sized strings we would iterate from 1 to 1 less than half the size
  - we only need to get those substrings whose length is a factor of the length of the given string

Subprocess - Check if any of the found substrings can used to form the given string

 iterate through the found substrings
 - For each substring multiple with (str.size/substr.size)
  - if multiplied string is equal to the given string
    - then return true
    - otherwise return false
=end

def find_substrings(str)
  substrings = []

  1.upto(str.size / 2) do |substr_size|
    substrings << str[0, substr_size] if str.size % substr_size == 0
  end
  substrings
end

def check_substrings(substrings, str)
  substrings.any? do |substr|
    str == substr * (str.size / substr.size)
  end
end

def repeated_substrings_pattern(str)
  substrings = find_substrings(str)

  check_substrings(substrings, str)
end


p repeated_substrings_pattern("aaaaa") == true
p repeated_substrings_pattern("abab") == true
p repeated_substrings_pattern("aba") == false
p repeated_substrings_pattern("aabaaba") == false
p repeated_substrings_pattern("abaababaab") == true
p repeated_substrings_pattern("abcabcabcabc") == true