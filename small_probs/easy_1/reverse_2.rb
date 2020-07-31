=begin
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# Problem
Define a method that has:
Input :  one string, contatining one or more_words
Output: one string, reverse words that have 5 or more chars 

# Rules: 
- String will only have letters and Spaces
- Include space if more than on word in string
- Only single space between words in output

# Mental Model:
- Given a string of one or more words consisting of only letters and spaces, reverse the words that have 5 or more chars. If only a single word is present then no spaces in the output.

# Example:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# DataStructure:
Inpuit : String
Intermediate DS: an array of words
Output: String

#Algorithm:
Given a string of words:
- Convert the string to an array of words(words_array)
- create a new empty reverse_words_array []
- iterate the words_array
  - if word.length >= 5
      push the reverse the word in to the aempty array
    ELSE
      push the word as it is
- Convert reverse_words_array back to string
- Return the new String
=end

def reverse_words(words_str)
  words_array = words_str.split

  reverse_words_array = []

  words_array.each do |word|
    if word.length >= 5
      reverse_words_array.push(word.reverse)
    else
      reverse_words_array.push(word)
    end
  end
  reverse_words_array.join(" ")
end

p reverse_words("Hello World")
p reverse_words('Walk around the block')
p reverse_words('Professional')
p reverse_words("Bye")