=begin
Write a method that takes one argument, a string, and returns a new string with the
words in reverse order.

Examples:

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

The tests above should print true.

## PEDAC

### U:
- write a method
- input: a string
- output:
- returns a new string
- words are in reverse order

#### Questions:
- What is a word? A substring delimited by spaces or is in the beginning of the string or end
has a space on the other end.
- "Words in reverse order" meaning? The word that appears last is first

Implicit:

- empty string input returns an empty string
- string containing only spaces returns an empty string
- Dont mutate the original string
- no non alpha numeric characters

### DS:

- input: string
- output: a new string

### Algo

- Given a sentence (astring) containing words i.e substrings delimited by spaces
- make a list of all the words in the string (sub strings)
  - split the given string into an array of words in the sentence
- reverse the order of the words in the list
  - the last word becomes the first word, the second last word becomes the second, the third last
  becomes the third ... (use the Array#reverse method)
- combine the list in to a sentence (a string)


=end

def reverse_sentence (sentence)
  list_of_words = sentence.split(" ")

  reversed_list_of_words = list_of_words.reverse

  reversed_list_of_words.join(" ")
end

p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'
p reverse_sentence('') == ''
p reverse_sentence('    ') == '' # Any number of spaces results in ''