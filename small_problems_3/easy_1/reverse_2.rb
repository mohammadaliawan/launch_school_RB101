=begin
Write a method that takes one argument, a string containing one or more words, and
returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string of words
**Output** : copy of the given string with words that are five or more chars reversed

**Explicit Requirements/Rules/Boundaries**
- words that are five or more chars should be reversed
- Each string will consist of only letters and spaces.
- Spaces should be included only when more than one word is present.


**Implicit Requirements/Rules/Boundaries**
- only one space shall be between words


**Special Terms**
- word: any sequnce of chars that donot contain a space, spaces delimit words


**Examples/Test Cases**
reverse_words('Walk around the block') # => Walk dnuora the kcolb
- 
reverse_words('Professional')          # => lanoisseforP

reverse_words('Launch School')         # => hcnuaL loohcS

**Questions**
-


**Data Structures**
reverse_words('Walk around the block') # => Walk dnuora the kcolb

[walk, dnuora, the, kcolb] -> ""
'Walk around the block' -> [walk, around, the, block] -> 


- input: string
- Output:string
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string of one or more words
- split the string into an array of words
- init an empty array
- Iterate through the list of words
  - for words having 5 or more chars reverse the word
  - save the word to new array
- join the strings in new array into a string

**Implementation details**\
- INIT words = split phrase into an array of words- delimiter would be a space " "
- INIT reversed to []
- iterate through the array words
  - IF current_word size >= 5
      reverse the word # reverse
      save the reversed word to new array reversed
    ELSE
      return the word as is
    END
  END

- Join the reversed_word array elements to a string with single spaces

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def reverse_words(phrase)
  words = phrase.split(" ")

  reversed = words.map do |current_word|
    if current_word.size >= 5
      current_word.reverse
    else
      current_word
    end
  end

  reversed.join(" ")
end
  
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS