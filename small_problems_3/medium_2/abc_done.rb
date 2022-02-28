=begin
A collection of spelling blocks has two letters per block, as shown in this list:

Copy Code
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not
 use both letters from any given block. 
Each block can only be used once.

Write a method that returns true if the word passed in as an argument 
can be spelled from this set of blocks,
 false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : boolean

**Explicit Requirements/Rules/Boundaries**
- Given a string
- write a method that takes a string as argument
- returns true if the word can be spelled using the given block
- return false if the word cannot be spelled 
- Blocks have two letters on them, both uppercase
- if one letter on a block is used, the other one cannot be used
  each block can be used only once


**Implicit Requirements/Rules/Boundaries**
- we need to be case insensitive
- 


**Special Terms**
-


**Examples/Test Cases**
block_word?('jest') == true
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

""

{ B: 'O', O: 'B', X: 'K', K: 'X', D: 'Q', Q: 'D', C: 'P', P: 'C', N: 'A', A: 'N', 
  G: 'T', T: 'G', R: 'E', E: 'R', F: 'S', S: 'F', J: 'W', W: 'J', H: 'U',
  U: 'H', V: 'I', I: 'V', L: 'Y', Y: 'L', Z: 'M', M: 'Z'
}

"jest" -> ['J', 'E', 'S','T'] -> 'W'
- we need to make the case consitent within our datastructures


**Questions**
-


**Data Structures**
- input: string
- Output: boolean
- Intermediate: array
- Storage: hash 

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string
- change the case to uppercase
- Create a look up dictionary to store block values
- For each letter in the string
  - if the corressponding letter does not appear in the string and the count of the current char is less than 2
    go to the next char
  - else 
    return false
- Return true

**Implementation details**\
- SET WORD -= WORD UPPERCASE
- INIT BLOCK CONSTANT to {}
- convert the given string to an array of chars
- iterate through the chars array
  - convert current char to a symbol
  - IF BLOCK[:char] is not included in the given string && count of current_char in string is less than 2
    - NEXT ITERATION
    ELSE
    - RETURN FALSE
    END
  END
- RETURN TRUE


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# Solution

BLOCKS = { B: 'O', O: 'B', X: 'K', K: 'X', D: 'Q', Q: 'D', C: 'P', P: 'C', N: 'A', A: 'N', 
  G: 'T', T: 'G', R: 'E', E: 'R', F: 'S', S: 'F', J: 'W', W: 'J', H: 'U',
  U: 'H', V: 'I', I: 'V', L: 'Y', Y: 'L', Z: 'M', M: 'Z'
}

def block_word?(word)
  word = word.upcase

  word.chars.each do |char|
    unless word.include?(BLOCKS[char.to_sym]) || word.count(char) > 2
      next
    else
      return false
    end
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true























# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end
# Discussion
# The first thing we want to consider is how we should organize our blocks;
# we want to be able to check each block easily to make sure that a valid block word is passed to this method.

# For this solution, we'll use an array of two letter strings. We'll use this array to check that the word passed 
#in doesn't contain two letters from any block. We also want to make sure that no block is used more than once. 
#If both those conditions are met, then we have a valid block word.

# In the solution the String#count method is used. This allows us to count the number of occurrences of
# a collection of characters. The collection of characters will be each block we want to check. If we find a count of 
#2 or greater, then we know that either both block characters are contained within the string, or that a character from 
#the current block occurs more than once in that string.

# The final item of note is that we must convert the input string to uppercase, just in case it contains lowercase letters.

# Further Exploration
# Did you use a different data structure for organizing your blocks? Were those blocks 2 letter strings or something
# else? What method did you use to check if a string had 2 letters from a single block? There are several different possibilities 
# for solving this exercise.