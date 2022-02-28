=begin
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :string of words
**Output** : a string, second last word

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes a string of words # Words are any sequence of non-blank characters.
- returns the middle word of the input string
-
-


**Implicit Requirements/Rules/Boundaries**
- return an empty string if input is an empty string
- if only one word ? return that word
- if even number of words? return ""
- if odd number of word? return the middle


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 'Launch School is great!' [Launch, School, is, great!]
- Output: ""
 [word1, word2, word3][-2]
 second_last  element at index  -2

input: "Hello this great!" [Hello this great]
output: "this"

middle index: 7 % 2 > 0
 7 / 2 -> 3


**Questions**
-


**Data Structures**
- input:string
- Output:string
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string of words
- split the string into a list of words seperated by spaces
- if size of the list of words % 2 > 0
   middle_index = size / 2
   return the middle element
- else if size of the array == 1
   string
  else
    ""



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def penultimate(phrase)
  list = phrase.split

  size = list.size

  if size.odd?
    middle_index = size / 2
    list[middle_index]
  elsif size == 1
    phrase
  else
    ""
  end
end

p penultimate('') == ''
p penultimate('last') == 'last'
p penultimate('last word') == ''
p penultimate('Launch School is great!') == ''
p penultimate("Hello this great!") == "this"