=begin
Write a method that returns a list of all substrings of a string that
start at the beginning of the original string. The return value should
be arranged in order from shortest to longest substring.

Examples:

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : an array of leading substrings

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes a string as argument
- return a list of leading substrings of the given string
- substrings: a subsequence of consecutive chars in the given string
- leading: start at the beginning of the original string
- list should be ordered in ascending order of substring length
-

**Implicit Requirements/Rules/Boundaries**
- single char string, return the char string as the only substring in array
- return an array of substrings
- return empty array if given empty string

**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 'abc'
- Output: ['a', 'ab', 'abc']

- always start at the 0 idx
- increase the length of the substring 1 to string.size
- a, ab, abc

'a' -> ['a']

-

**Questions**
-


**Data Structures**
- input: string
- Output: array of strings
- Intermediate:
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init an empty [] # leading_substrings
- For length of substring from 1 to size of the string
  - starting from index 0 get the substring of current length
  - save the current substring in to the leading_substring array
- return the leading_substring array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def leading_substrings(str)
  leading_substrings = []

  1.upto(str.size) do |length|
    leading_substrings << str.slice(0, length)
  end

  leading_substrings
end

CocoMingleTex662323

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']