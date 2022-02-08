=begin

Write a method that takes a string, and returns a new string in which 
every character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : new string

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argument
- returns a new string
- in which every char is doubled


**Implicit Requirements/Rules/Boundaries**
- if given empty string return an empty
- if a char already occurs twice, it still needs to be doubled
- all chars special and spaces need to be doubled

**Special Terms**
- doubled: a new same char needs to be inserted next to the existing char

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input:'Hello'
- Output: HHeelllloo"

empty list []
"H e l l o" --> insert each char twice in the empty list [H H e e l l l l o o]
[H H e e l l l l o o] --> "HHeelllloo"

input:"Good job!"
output: "GGoooodd  jjoobb!!"

[GGoooodd  jjoobb!!] --> "GGoooodd  jjoobb!!"

input: ""
output: ""



**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate:
- Storage: []

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init an empty [] # double_chars
- for each char in the string
  - append the current char twice in the double_chars array
- join the chars in double_chars array to produce a string 
- return the new string

**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def repeater(str)
  double_chars = []

  str.each_char do |char|
    double_chars << (char*2)
  end
  double_chars.join("")
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''