
=begin
# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

p alphabet_score('man i need a taxi up to ubud') == 'taxi' = 19 + 1 + 24 + 9 = 
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'

------ PED:- 0 MIN to 12 MIN --------------


**Input** : a string of words
**Output** : a string of one word

**Explicit Requirements/Rules/Boundaries**
- Given a string
- we need to find the highest scoring word
- each alphabet has some points according to its position
- a = 1, b = 2, ...
- we need to return the highest scoring word as a string
- if two words have the same score. return the word that appears first
- all letters will be lowercases
- all inputs shall be valid


**Implicit Requirements/Rules/Boundaries**
- core of any word = sum of the scores of its letters


**Special Terms**
- word - a substirng of the given string that is delimted by spaces
- highest scoring word - the word that has the highest sum of scores of its letters
- score of any word = sum of the scores of its letters


**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage: hash

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string of words 
- Initialize an empty hash # words_scores {word => score }
- split the string into a list of words # words are substirng delimited by spaces
- For each word in the list of words
  - calculate the score of the current word
  - save the word and its score in the words_scores hash
- find the max score in the words_scores_hash
- return the first word for which has this score


**Implementation details**
- calculate the score of the current word
  - INIT ["a".."z"] 
  - score of a letter = its index + 1
  - sum = 0
  - iterate through the word chars
    - sum += index of current char + 1
  


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

ALPHABETS = ('a'..'z').to_a

def calculate_word_score(word)
  word.chars.reduce(0){|score, char|score + ALPHABETS.index(char) + 1}  
end

def alphabet_score(phrase)
  words_scores = Hash.new(0)
  
  words_in_phrase = phrase.split(" ")
  
  words_in_phrase.each do |word|
    words_scores[word] = calculate_word_score(word)
  end
  
  words_scores.max_by {|word, score| score}.first
end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'