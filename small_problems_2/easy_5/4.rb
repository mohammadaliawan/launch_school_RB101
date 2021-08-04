
=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

PEDAC:

input: string of words seperated by spaces
output: string with first and last letters of every word are swapped.
- Assume every word contains atleast one letter
- string will always contain atleast one word- no empty string
- string contains nothing but words and spaces

Implicit:
- if a word contains a single char then no change

DS:
input: string
output: string

Algo:

Given a string of words seperated by spaces
- For each word in the string
- Save the first char
- Save the last char
- Assign the first char in the word to the saved last char
- Assign the last char in the word to the saved first char



=end

def swap(words)
  swapped_words = words.split.map do |word|
                  first_char = word[0]
                  last_char = word[-1]

                  word[0] = last_char
                  word[-1] = first_char

                  word
                end

  swapped_words.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'