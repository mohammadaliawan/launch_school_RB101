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


**Input** :string
**Output** : array of all substrings

**Explicit Requirements/Rules/Boundaries**
- return all substrings of a string
- the list should be ordered by where in the string the substring begins
  - starting from substring which start at index 0 , then 1, and so on
- the list should also be ordered with respect to the length of the substring in ascending order


**Implicit Requirements/Rules/Boundaries**
- return all the substirng in one array


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 'abcde'
- Output:


 [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

for starting index iterate from 0 to last char size - 1
for end index iterate from current starting index to size - 1


**Questions**
-


**Data Structures**
- input: string
- Output: array of substrings
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init a new empty array # substrings
- For starting index from 0 to size - 1
  - find all the leading substrings with the current starting index
  - save them in the substrings array
- return the substrings array

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

def substrings(str)
  (0...str.size).each_with_object([]) do |start_index, substrings|
    current_substring = str[start_index..-1]
    substrings.concat(leading_substrings(current_substring))
  end
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]