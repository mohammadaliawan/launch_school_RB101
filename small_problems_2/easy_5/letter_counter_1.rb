=begin
Write a method that takes a string with one or more space separated words and returns a hash that
shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

------ PED:- 0 MIN to 12 MIN --------------

**The Problem -**\
- Write a method that takes a string with one or more space separated words
- returns a hash that shows the number of words of different sizes
- Words consist of any string of characters that do not include a space

**Input** : string of words seperated by spaces
**Output** : a hash key -> word length, value-> number of words with that length

**Explicit Requirements/Rules/Boundaries**
- def a method that takes a string
- string may contain one or more space seperated words
- return a hash key -> word length, value-> number of words in the given string with that length
- words are delimited by spaces

**Implicit Requirements/Rules/Boundaries**
- if a word occures multiple times then count it as many times
- a word may consist of special chars,
- special chars will count towards the length of the word
- for empty string input return a {}


**Special Terms**
-


**Examples/Test Cases**
- input: 'Four score and seven.' [Four, score, and, seven.], {}
- Output: { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }

- take each word
- find its length
- store the length as the key in the hash with a value of 1
- go to the next and find its length
- if the key = length exists in the hash, incremetn the value by 1
- go to the next word

**Questions**
-


**Data Structures**
- input: string
- Output: hash
- Intermediate: array
- Storage: hash

--------------- A:- 18 MIN to 20 MIN------------

**Algorithm**
- Given a string  #'Four score and seven.'
- initialize an emtpty hash to store the result # result = {}
- get a list of all the words in the string # [Four, score, and, seven.]
- iterate through the list of words
  - for each word
    - find its length
    - if current_length is included in the hash as a key
      - increment the value for that key by 1
    - if the current length is not included in the hash as a key
      - store the length as the key in the result hash
      - assign the value of the key as 1
- return the result hash


**Implementation details**
- String#split
- Array#each to iterate over the list of words
- String#size
- Hash.key?()
- result[key] = result[key] + 1
- result[key] = 1


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def word_sizes(text)
  result = {}

  words = text.split

  words.sort_by!{|word|word.length}

  p words

  words.each do |word|
    current_word_length = word.size

    if result.key?(current_word_length)
      result[current_word_length] += 1
    else
      result[current_word_length] = 1
    end
  end

  result
end

p word_sizes('Four score and seven.')# == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}