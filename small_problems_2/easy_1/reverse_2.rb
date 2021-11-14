=begin
Write a method that takes one argument, a string containing one or more words, and
returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin

** Problem Requirements **

Input: a string with one or more words
return: a string

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes one argu
- argu is a string with one or more words
- returns a new string with words that have length >= 5 reversed
- string will have only letters and spaces
- include spaces only if more than one word in the given string

**Implicit**

** Terms **
- words are substrings of a string delimited by spaces

**Questions**
- return a new string
- dont mutate the given string
- single space between the words
- single space in the output string
- no emtpy strings

** Data Structures**

- input: string
- Output: string
- Intermediate: array of strings
- Storage:


**Algorithm**
- given a string of one or more words
- create a new empty array to store the final words
- For each word in the string
  - if length of the word is greater than or equal to 5
    - reverse the chars in the word and append the reversed word in the new array
  - otherwirse
    - append the word as it is in the new array
- Join back the new array to a string with a single space as a sep

** Implementation details **

Subprocess = reverse the chars in the word
use string#reverse method



=end

def reverse_words(words)
  words.split.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS