=begin

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Problem: Given a string
Return a hash with word size as keys, and number of words that have that size as values

Rules: Explicit: a word is any string that does not include a space
implicit: special characters count towards word count

Data structure: input: string
output: hash

Algorithm:
Given a string
Break string into words
Return a hash with word size as keys and how many words with that size as values
  Initialize an empty hash named hash
  Iterate through the array of words, 
  find the size of each word
    if size exists in the hash as key
      increment values for that size by 1
    else
      store key-value value as size => 1
    
    
  Return the hash

PSEUDOCODE

Given a string

SET array_of_words = to string.split

INITIALIZE empty hash named hash_word_sizes
ITERATE through array_of_words
  SET word_size = length of word
  IF word size already exists in hash as key
     increment value  by 1
   ELSE 
    store key-value pair in hash as size => 1
    
RETURN the hash_word_sizes

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

=end

def word_sizes(str)
  array_of_words = str.split
  hash_word_sizes = Hash.new(0)
  
  array_of_words.each do |word|
    word_size = word.size
     hash_word_sizes[word_size] += 1
    
    # if hash_word_sizes.include?(word_size)
    #   hash_word_sizes[word_size] += 1
    # else
    #   hash_word_sizes[word_size] = 1
    # end
  end
    
  hash_word_sizes
end
  
p word_sizes('Four score and seven.')  == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?")  == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}