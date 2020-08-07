=begin
Write a function that will find all the anagrams of a word from a list. 
You will be given two inputs a word and an array with words. 
You should return an array of all the anagrams or an empty array if there are none. 

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []


Problem:

Input: a string, and an array of strings
Output: Return an array of strings
Rules:
_Explicit:
  - Find all the anagrams of the given string from the array 
    (anagrams are words containing the same letters)
  - return an array of the words(strings) that are anagrams of the given string
  - Return an empty array if no anagrams
  Implicit:
    - Treat capital letters to be the same as lowercase (assumption)
    - No spaces in words
    - No special Characters

DS:
Input: a string and an array of strings
Output: an array strings
Intermediate: an array for the given string

Algo:
Given a string(given_word) and an array of strings(words_list)
- create a new empty array(anagrams_list)
- sort the given_word alphabatically (word_key)
    - #chars.sort.join
- For each word in the words_list |word|
    - Check if alphabatically sorted word == the word_key
        - If it does then push it to the anagrams_list
- Return the anagrams_list
=end


def anagrams(given_word, words_list)
  anagrams_list = []
  word_key = given_word.downcase.chars.sort.join

  words_list.each do |word|
    if (word.downcase.chars.sort.join) == word_key
      anagrams_list << word
    end
  end
  anagrams_list
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) #== ['aabb', 'bbaa']

p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) #== ['carer', 'racer']

p anagrams('laser', ['lazing', 'lazy',  'lacer']) #== []

