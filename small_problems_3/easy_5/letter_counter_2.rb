=begin
Write a method that takes a string with one or more space separated words and returns a hash that
shows the number of words of different sizes. Exclude non-letters when determining word size.

Words consist of any string of characters that do not include a space.

For instance, the length of "it's" is 3, not 4.





------ PED:- 0 MIN to 12 MIN --------------


**Input** : string of words
**Output** : hash key -> size of word , value -> number of words with that size

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string
- words are seperated by spaces
- return a hash
- hash should show the number of words with different sizes
- dont count non-alphabetic chars in word size
- after removing special chars the chars after the special char and the chars before count as one word
- it's -> its

**Implicit Requirements/Rules/Boundaries**
- words are delimited by spaces


**Special Terms**
-


**Examples/Test Cases**
- input: Four score and seven.
- Output: { 3 => 1, 4 => 1, 5 => 2 }

- clean the string -> remove non-alpha chars
- divide the strinng into words
- for each word determine the size
- store the size in a hash as key
- assign the value as 1




**Questions**
-


**Data Structures**
- input: string
- Output: hash
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string of words seperated by spaces and including non-alpha chars
- clean up the string -> remove the special chars
- initialize a empty hash to store the result
- seperate the new string into words list
- for each word in the list of words
  - determine the size of the current word
  - if current_length exists in the result hash
      - increment the value by 1
  - if the current_length does not exist in the result hash
      - store the length as key
      - assign the value to the key as 1
- return the result hash


**Implementation details**
- clean up the string -> remove the special chars
  - gsub(/[^a-zA-Z ]/, "")
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def word_sizes(text)
  text = text.gsub(/[^a-zA-Z ]/, "")

  result = {}

  text.split.each do |word|
    if result.key?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end

  result
end


p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}