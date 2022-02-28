=begin

Write a method that takes a string as an argument, and returns an
 Array that contains every word from the string, 
to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space,
and that any substring of non-space characters is a word.

Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : array, containing every word in the string

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argu
- returns an array of all words in the string with a space and lenght of word "word 4"
- words in the string are separated by exactly one space
- any substring of non-space characters is a word.

**Implicit Requirements/Rules/Boundaries**
- special chars are parts of the word
- empty string returns an empty array


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: It ain't easy, is it?
- Output: ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

split string into list of words

transform the array of words to array of "word length"
each element of the word bo transformed.


**Questions**
-


**Data Structures**
- input: string
- Output: array
- Intermediate:
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- split the string into an array of words
  - words are seperated by single spaces
- make a new empty array [] # word_lengths
- For each word in the array
  - make a new string containging the word and the length #{word} #{word.size}
  - append to the word_lengths array
- return the word_lengths array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def word_lengths(phrase)
  words = phrase.split

  words.map {|word| "#{word} #{word.size}"}
end



p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]