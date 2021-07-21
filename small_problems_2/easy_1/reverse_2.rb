=begin
Write a method that takes one argument, a string containing one or more words, and
returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

## PEDAC

### U
- write a method that has
- input: a string containing one or more words
- output: a string, words with 5 or more chars reveresed "whole" => "elohw"
- String will only have letters and spaces. no numeric or special chars
- include space only when more than one word inthe string

#### Implicit:
- a word is a sub string delimited by spaces
- if no spaces, then consider it to be one word
- the order of the words should be the same as in the input
- return a new string, dont mutate (assumption)
- spaces dont count as chars in a word

### DS:

input: string
output: string

### Algo

- Given a string containing one or more substrings delimited by spaces
- make a list of the substrings in the string
- For each substring in the list with five or more chars
  - reverse the substring
- Combine the list into a string with sub strings seperated by a space
  - if only one word present no spaces

=end

def reverse_words (words)
  words_list = words.split(" ")

  words_list.each do |word|
    word.reverse! if word.length >= 5
  end

  words_list.join(" ")
end


p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS