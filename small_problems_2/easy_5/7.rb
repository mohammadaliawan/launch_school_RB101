=begin

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

PEDAC:

U:
input: string with one or more space seperated words
output: a hash with key(length of word) => value(number of words with that length)

Explicit:
- Word: a substring that does not include a space and is delimted by spaces
= non=letters: non alphabatic chars

Implicit:
- empty string returns an empty hash
- case insensitive


DS:
input: string
output: a hash
Intermediate: an array of valid chars

Algo:

- Given a string
- Split the stirng into a collection of substrings delimted by spaces
- Clean each word containing nonalphabatic chars
 -    FOr each word, replace the nonalpha chars with an ""
- Count the number of words with different lengths, populate the hash
    - create an empty hash
    - for each word,
        - check if current word.size is a key in the hash
            - if it is increment the value by 1
        - if current word.size is not akey in the hash
            - if not, insert the key, value pair size => 1
- return the hash

=end

VALID_CHARS = ("a".."z").to_a + ("A".."Z").to_a

def clean(words_array)
  words_array.each do |word|
    word.chars.each_with_index do |char, index|
      if VALID_CHARS.include?(char)
        next
      else
        word[index] = ""
      end
    end
  words_array
end

def word_sizes(string)
  words_in_string = string.split(" ")
  
  clean_words = clean(words_in_string)
  
  result = Hash.new(0)
  
  clean_words.each do |word|
    result[word.size] += 1
  end
  result
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
