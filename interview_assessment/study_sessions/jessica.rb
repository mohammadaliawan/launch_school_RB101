=begin
# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the original string.
# All letters will be lowercase and all inputs will be valid.

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- input: string of words
- Output: a string , s single word
- find the highest scoring word
- Each letter of a word scores points according to it's position in the alphabet
  - each char of a word scores points
- return the highest scoring word as a string
- If two words score the same, return the word that appears earliest in the original string
- All letters will be lowercase and all inputs will be valid.


'aa b' =>
**Implicit**
- words are substrings of the string delimted by spaces
- score: sum of the points for each char in a word

** Examples **
- 'aa b' --> "aa" => 2, "b" => 2 => "aa"
- 'take me to semynak' --> 'take' --> 20 + 1 + 11 + 5 = 37, 'me' => 13 + 5 = 18, 'to' => 20 + 5 = 25
'semynak' => 19 + 5 + 25 + 14 + 1 + 11 = 75

**Special Terms**
-

**Questions**
-

- Input: string
- Output/return: the words string that scores the highest

**Data Structures**
- input: string
- Output: string
- Intermediate: hash to store the points for each word
- Storage: array to store the points for each char in the alphabet, the score = index + 1

**Algorithm**
- create an array of all alphabets
- create an empty hash to store the score of each word
- split the given string into words , words are delimted by spaces
- calculate the score of each word and store in the hash "word" => score
- to get the maximum score in the hash
- return the word for the   with the maximum value or score

**Implementation details**
-

=end

POINTS = ('a'..'z').to_a

def alphabet_score(sentence)
  scores = {}



end

# p alphabet_score('man i need a taxi up to ubud') == 'taxi'
# p alphabet_score('what time are we climbing up the volcano') == 'volcano'
# p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') #== 'aa'