=begin

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

# Problem:

Input: String of words
Output: highest scoring word as a string
Rules: 
_Explicit:
  - Each letter in a word has a score {"a" => 1, "b"=> 2, "c"=> 3...}
  - Return the highest scoring word as a string
  - If two words have the same score, Return the first appearing word(the one with the lower index)
  - All letters will be lower case
  - All inputs will be valid characters
  Implicit:
  - To calculate the score of a word sum the scores of each letter. sum = score["a"] + score["b"] ...
  - the words are seperated by spaces.

DS:
Input: a string of words containing alphabets only and spaces
Output: a string containing only one word.
Intermediate: array

Algorithm:

Given a string of words:
 - convert the string into an array of words # words_array
 - create a alphabet_points for storing score for each alphabet
 - iterate through the words_array
    - Calculate the score of each word
        - iterate on the word characters
            - calculate the sum of the score of each alphabet using the score_hash
    -         Store the score for each word in words_score
        -       {score => [word1, word2]
  - Select the ones with the highest score
  - Return the one which appears first

=end

# def store_alphabet_points
#   alphabet_points = Hash.new(0)
#   score = 1
#   ("a".."z").each do |alphabet|
#     alphabet_points[alphabet] = score
#     score += 1
#   end
#   alphabet_points
# end

# def calculate_word_score(word, alphabet_points)
#   word_score = 0
#   word.chars.each do |char|
#     word_score += alphabet_points[char]
#   end 
#   word_score
# end

# def highest(words_string)
#   words_array = words_string.split
 
#   alphabet_points = store_alphabet_points()
  
#   words_scores = Hash.new{|hash, key| hash[key] = []}
  
#   words_array.each do |word|
#     word_score = calculate_word_score(word, alphabet_points)
#     words_scores[word_score] << word
#   end
  
#   highest_score = words_scores.keys.sort.last
  
#   words_scores[highest_score][0]
# end

=begin
# Felicia Solution
input: string of words
output: string, highest scoring word
problem: 
- map letters to positions in the alphabet
- total up letter scores to find total word score
- find highest scoring word
algorithm: 
- initialize 'alphabet' to range: 'a'..'z'
- initialize 'word_scores' to {}
- split string into array of words using #split and #each
- initialize 'word_score' to 0
- split word into characters using #each_char
  - given letter 
    - increment 'word_score' by letter position using #index: alphabet.index(letter) + 1
  - update 'word_scores' with word as key and word_score as value
  - word_scores[word] = word_score
- find highest scoring word: #values and #max
- invoke #key on return value of previous step

#Algorithm

=end

def alphabet_score(string)
  alphabet = ('a'..'z').to_a
  word_scores = {}
  string.split.each do |word|
    word_score = 0
    word.each_char do |char|
      word_score += alphabet[char + 1]
      # word_score = word_score + alphabet[char + 1]
    end
    word_scores[word] = word_score 
  end
  word_scores.key(word_scores.values.max)
end




LETTERS = ('a'..'z').to_a
POSITIONS = (1..26).to_a
ALPHABET = LETTERS.zip(POSITIONS).to_h


def alphabet_score(string)
  alphabet = ('a'..'z').to_a
  word_scores = {}
  string.split.each do |word|
    word_score = 0
    word.each_char do |char|
      word_score += ALPHABET[char]
      # word_score = word_score + alphabet[char + 1]
    end
    word_scores[word] = word_score 
  end
  word_scores.key(word_scores.values.max)
end
