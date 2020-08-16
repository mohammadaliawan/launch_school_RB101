=begin

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.


=end

=begin

Given a string of letters and possibly spaces

Subprocess= Store the points for each alphabet in a look up table
  - Create a hash(ALPHABET_POINTS), with keys as letters, and numbers as values.With a = 1... z = 26.
      Iterate through the range alphabet 'a'..'z' 
       - store each alphabet in the hash with its corresponding points

Convert the string of words into an array of word strings (words_array)
  -Break string of words into words, delimited by spaces

Find the score of each word
-Iterate through each word in the words_array
  -Iterate through each character in each word
    -Look up points for each character
      -Sum up the points for each character.
        -Store into a new hash "word_scores"
        -words are values and word scores are keys
      {score => [words]}

Find the highest scoring word that appears first
 
=end


def create_points_table
  value = 1
  alphabet_points = {}
  ('a'..'z').each do |char|
    alphabet_points[char] = value
    value += 1
  end
  alphabet_points
end
  

ALPHABET_POINTS = create_points_table()

words_array = string_of_words.split