=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

The tests above should print true.


=begin

** Problem Requirements **

Input:string of words
return: a new string with words in reverse order

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes one arg a string
- return a new string
- in which  the words are in reverse order

**Implicit**
- order of the words needs to be reversed
- the chars in the words themselves will remain in the same order
- empty string returns ""
- "   " => ""
- "single" => "single"

** Terms **
- a word is a substring of the given string delimited by spaces


**Questions**
- Assuming there are going to be only single spaces between

** Data Structures**

- input:string
- Output: string
- Intermediate: array of strings
- Storage:


**Algorithm**

- Given a string of words
- split the string of words into an array of words # - words are delimited by spaces
- reverse the order of words in the array
- join back the array of words to a string
- return the string

** Implementation details **
-



=end

def reverse_sentence(words)
  words_ary = words.split

  reversed_words_ary = words_ary.reverse

   reversed_words_ary.join(" ")

end



puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''