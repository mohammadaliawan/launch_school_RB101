=begin

Write a method that returns a list of all substrings of a string.
The returned list should be ordered by where in the string the substring begins.

This means that all substrings that start at position 0 should come first,
then all substrings that start at position 1, and so on.

Since multiple substrings will occur at each position,
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : array of substrings

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes a string as an argument
- return an array of all substrings of the given string
- 1st order: substrings should be ordered according to where in the string the substring begins
- 2ns order: within the substrings that begin at a certain index, the order should be shortest to the longest
- list all substrings that start at index 0 (shortest to longest)
- list all substring that start at index 1 (shortest to longest)
- so on. .

**Implicit Requirements/Rules/Boundaries**
- a single char string is also considered a substring
- the whole string itself is also considered a substring
- we are coming up with leading substrings that start with each char of the string

**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input:'abcde'
- Output: 
[
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

leading substring with the first char (shortest to longest) start_index 0, end_index 0..-1
leading substrings with the 2nd char  start_index 1, end_index 1..-1 
leading substrings with the 3rd char  start_index 2, end_index 2..-1
....


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
- init an [] # substrings
- For index from 0 to last index
  - get the substring starting with the current index
  - get all the leading substrings for substring
    - init an empty array # lead_subs
    - For end index from 0 to last index
      - get the current leading substring [0..end_index]
      - save to lead_subs
  - save all the leading substring to substrings array
- return the substrings

**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def leading_substrings(str)
  lead_subs = []

  0.upto(str.size - 1) do |end_index|
    lead_subs << str[0..end_index]
  end

  lead_subs
end

def all_substrings(str)
  substrings = []

  0.upto(str.size - 1) do |index|
    current_substring = str[index..-1]
    substrings.concat(leading_substrings(current_substring))
  end

  substrings
end

p all_substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]