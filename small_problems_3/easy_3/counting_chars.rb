=begin
Write a program that will ask a user for an input of a word or multiple words and
give back the number of characters. Spaces should not be counted as a character.

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : string

**Explicit Requirements/Rules/Boundaries**
- get a string of words from the user
- count the number of chars in the input string
- spaces should not be counted
- output a string "There are 4 characters in "input string"


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**



**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Retrieve words or multiple words from the user
- Count the number of character in given string except spaces
  - remove spaces from the given string
  - find the number of chars in the remaining string
- Output the number of chars in input string


**Implementation details**\
Subprocess- Retrieve words or multiple words from the user

GET "Please enter a word or multiple words:"
SET input_string to input string

 Count the number of character in given string except spaces
  - remove spaces from the given string
    - gsub(" ", "")
  - find the number of chars in the remaining string

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def retrieve_words
  puts "Enter words or multiple words:"
  gets.chomp
end

def number_of_characters
 input_words = retrieve_words

 num_of_chars = input_words.count("^ ")

 puts "There are #{num_of_chars} characters in \"#{input_words}\"."
end

number_of_characters