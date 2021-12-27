=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces


swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


------ PED:- 0 MIN to 12 MIN --------------

**The Problem -**
- Given a string of words separated by spaces,
- write a method that takes this string of words
- returns a string in which the first and last letters of every word are swapped

Assumptions
- assume that every word contains at least one letter
- the string will always contain at least one word
- that each string contains nothing but words and spaces

**Input** : string of words seperated by spaces
**Output** : new string with the first and last letters of each word swapped

**Explicit Requirements/Rules/Boundaries**
- Given a string of words separated by spaces,
- write a method that takes this string of words
- returns a string in which the first and last letters of every word are swapped
Assumptions
- assume that every word contains at least one letter
- the string will always contain at least one word
- that each string contains nothing but words and spaces

**Implicit Requirements/Rules/Boundaries**
- inputs string:-  a string of multiple words, 
                -  a single word
                - a single char string


**Special Terms**
- word: a substring of the given string that is delimited by spaces.


**Examples/Test Cases**
- input: 'Oh what a wonderful day it is'
- Output: 'hO thaw a londerfuw yad ti si'

first_char = word[0]
word[0] = word[-1]
word[-1] = first_char

**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage: local variable to store the first char

--------------- A:- 18 MIN to 20 MIN------------

**Algorithm**
- Given a string of words 'Oh what a wonderful day it is'
- make a list of words in the string [Oh, what, a,  wonderful ... ]
- for each word in the list
  - assign the first char of the word to a new variable # first_char = word[0]
  - reassign the char at the index 0 to char at index -1 # word[0] = word[-1]
  - reassign the char at index -1 to the first_char # word[-1] = first_char
- Join the list of words back to a string # join
- return the new string

**Implementation details**
- 


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def swap(string_of_words)
  list_of_words = string_of_words.split

  list_of_words.each do |word|
    first_char = word[0]

    word[0] = word[-1]

    word[-1] = first_char
  end

  list_of_words.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'