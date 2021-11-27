=begin
Write a program that will ask a user for an input of a word or multiple words and
give back the number of characters. Spaces should not be counted as a character.

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- ask the user for an input
- input can be a word or multiple words
- output the number of chars in the input
- spaces dont count as chars

**Implicit**
- special chars count
- output should be in the form of There are #{num_of_chars} characters in "#{input_string}".

**Special Terms**
- word or multiple words means a string containing 0 or more spaces. words are delimited by spaces

**Questions**
- input is empty string

- Input: string
- Output/return: string

**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage:

**Algorithm**
- retrieve a word or multiple words from the user
- split the input string into an array of words
- For each word in the array of words
  - count the num of chars
  - add to the total number of chars
- Output the total number of chars in the input

**Implementation details**
- init total = 0
- Iterate through the array of words
  - count the number of chars in current word
  - total += count_current_word

=end

print "Please write word or multiple words: "
str_input = gets.chomp

words_ary = str_input.split

count_chars = words_ary.reduce(0){|total_chars, word| total_chars + word.size}

puts "There are #{count_chars} characters in \"#{str_input}\"."