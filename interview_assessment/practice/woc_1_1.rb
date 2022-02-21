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

p repeated_substrings_pattern("aaaaa") == true
p repeated_substrings_pattern("abab") == true
p repeated_substrings_pattern("aba") == false
p repeated_substrings_pattern("aabaabaab") == false
p repeated_substrings_pattern("abaababaab") == true
p repeated_substrings_pattern("abcabcabcabc") == true

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : non empty string
**Output** : true or false booleans

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argument - non empty
- checks if the string can be made by taking a substring of it and appending multiple copies of it togather
- return a boolean true if it can
- return the boolean false it it cant
- 

**Implicit Requirements/Rules/Boundaries**
- a single char string is a valid substring
- the whole string is not a valid substring
- the only possible substrings that could be used should have a length that is a factor of the length of the given string
- we only need to check upto half the length of the string

size = 5 -> 0 1 2 3 4
middle_char at index = 5/ 2 = 2
size = 7
middle char = 7 /2 = 3 -> 0 1 2 3 4 5 6
9 -> 9/2 = 4 -> 0 1 2 3 4 5 6 7 8

size = 4 -> 4/ 2= 2 - 1, 0 1 2 3, 
size = 6 -> 6/2 = 3 - 1, 0 1 2 3 4 5
size = 20 -> 20/2 = 10 - 1 = 9

oddlength - middle char at index size/2
evenlength - middle char at index size/2 - 1

**Special Terms**


Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output
**Examples/Test Cases**

- input: "abaababaab"
- Output: true

"abaababaab" 



"abab" -> "ab"

**Questions**
-


**Data Structures**
- input: 
- Output: 
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a non empty string
- find all the possible substring that could be used to form the string
  - their length is a factor of the length of the string
  - max length of substring can be half the length of the string
  - they all start at index 0
- check if any of the substrings found could be appended multiple times to form the given string
  - multiply each substring by (string size/substring size)
  - if the strings are equal then return true
  - otherwise , return false

**Implementation details**\

- find all the possible substring that could be used to form the string
  - find all the factos of the given string size 
  - for all the factors
    - find all the substrings of these lengths starting from index 0

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def find_factors(str)
  factors = []

  1.upto(str.size/2) do |num|
    if str.size % num == 0
      factors << num
    end
  end
  factors
end

def find_substrings(str)
  substrings = []
  factors = find_factors(str)

  factors.each do |length|
    substrings<< str.slice(0, length)
  end
  substrings
end

def repeated_substrings_pattern(str)
  substrings = find_substrings(str)

  substrings.any? do |substring|
    str == substring * (str.size/substring.size)
  end
end


p repeated_substrings_pattern("aaaaa") #== true
p repeated_substrings_pattern("abab") #== true
p repeated_substrings_pattern("aba") #== false
p repeated_substrings_pattern("aabaaba")# == false
p repeated_substrings_pattern("abaababaab")# == true
p repeated_substrings_pattern("abcabcabcabc") #== true
