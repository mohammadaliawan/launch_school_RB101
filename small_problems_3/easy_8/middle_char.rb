=begin

Write a method that takes a non-empty string argument, and returns the middle character or
 characters of the argument. If the argument has an odd length, you should return exactly 
 one character. If the argument has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : middle string char or chars

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a nonempty string argu
- return the middle char or chars
- if odd length, return exactly one char
- if even length, return exactly two chars


**Implicit Requirements/Rules/Boundaries**
- spaces count as valid char
- special chars also count as valid chars


**Special Terms**
- middle char:
  - odd length: char at middle index [0 1 2 3 4]

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 'I love ruby' 
- Output: 'e'

get the size: 11
11/2 = 5
5/2 = 2

'Launch School' 
size = 13
13/2 = 6

'Launch'
size = 6
6/ 2 = 3
string[3-1,3]

**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string 
- if the size of string is odd
  - return the char at index size/2
  else
  - return the chars from index (size/2 - 1..size/2)


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def center_of(str)
  str_size = str.size
  middle_index = str_size/2

  if str_size.odd?
    str[middle_index]
  else
    str[(middle_index - 1)..middle_index]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'