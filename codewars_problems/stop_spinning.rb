=begin

Write a function that takes in a string of one or more words, 
and returns the same string, but with all five or more letter words reversed.
 Strings passed in will consist of only letters and spaces.
  Spaces will be included only when more than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"
P spinWords(‘test’) == ‘test’


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string of one or more words
**Output** : same string with words that are five or more letters reversed

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argument of one or more words
- return the same string with five or more letter words reversed
- strings will contain only letters and spaces
- spaces will be included only when more than one word is present


**Implicit Requirements/Rules/Boundaries**
- 


**Special Terms**
- words: any sequence of characters that do not include a space


**Examples/Test Cases**
p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"

"Hey fellow warriors" -> [Hey fellow warriors] -> [Hey wollef sroirraw]

p spinWords("This is a test") == "This is a test" 


p spinWords("This is another test") == "This is rehtona test"

P spinWords(‘test’) == ‘test’


**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate:array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string of words
- convert the string to an array of word strings
- make an empty array to save transformed words
- For each word in the array
  - if current word has 5 or more characters
    reverse the chars in the word and append to the new array
  - otherwise
    append the word as it is to the new array
- join back the new array to a string
- return the new string


**Implementation details**\
- INIT words array to string split at " "
- INIT transformed_words to []
- Iterate over the words array
  - IF current_word size is >= 5
    - reverse the current_word
    - append reversed word to transformed_words array
  - ELSE
    - append current_word to transformed_words array
  - END
- Join the strings in transformed_array to a single string with " " as seperators
- RETURN the new string


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def spin_words(words)
  words_array = words.split(" ")

  transformed_words = words_array.map do |current_word|
    if current_word.size >= 5
      current_word.reverse
    else
      current_word
    end
  end

  transformed_words.join(" ")
end

p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"
p spin_words("This is a test") == "This is a test" 
p spin_words("This is another test") == "This is rehtona test"
p spin_words('test') == 'test'