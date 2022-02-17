Now I Know My ABCs
A collection of spelling blocks has two letters per block, as shown in this list:

Copy Code
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples:

Copy Code
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
Hide Solution & Discussion
Solution
Copy Code
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
Discussion
The first thing we want to consider is how we should organize our blocks; we want to be able to check each block easily to make sure that a valid block word is passed to this method.

For this solution, we'll use an array of two letter strings. We'll use this array to check that the word passed in doesn't contain two letters from any block. We also want to make sure that no block is used more than once. If both those conditions are met, then we have a valid block word.

In the solution the String#count method is used. This allows us to count the number of occurrences of a collection of characters. The collection of characters will be each block we want to check. If we find a count of 2 or greater, then we know that either both block characters are contained within the string, or that a character from the current block occurs more than once in that string.

The final item of note is that we must convert the input string to uppercase, just in case it contains lowercase letters.

Further Exploration
Did you use a different data structure for organizing your blocks? Were those blocks 2 letter strings or something else? What method did you use to check if a string had 2 letters from a single block? There are several different possibilities for solving this exercise.