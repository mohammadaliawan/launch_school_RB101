=begin

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

input:

Please write word or multiple words: walkdon't run

output:

There are 13 characters in "walk, don't run".

Write a program that asks for one word or multiple words from a user.

Give back the number of characters (and print that in a sentence, string interpolated).

Data Structures:

input: string

output: string
Rules: Don't count spaces, but other special characters do count

Algorithm:

Get user input.
  -Prompt user for a string.
  -Store input in variable.

Output the number of characters in the user input.
  -Count how many characters are in the string
    -Iterate through the one string, one character at a time
      Initiate a count variable
      If it is NOT a space, increment the count.
    -Return the count 
  - Display the count interplated in a string
=end

def prompt(msg)
  print("=>#{msg}")
end

def get_user_input
  prompt("Please write a word or multiple words: ")
  user_input = gets.chomp
end

def find_number_of_char(string_of_words)
  count = 0
  string_of_words.each_char do |char|
    count += 1 if char != " "
  end
  count
end


string_of_words = get_user_input

number_of_char = find_number_of_char(string_of_words)

prompt("There are #{number_of_char} characters in \"#{string_of_words}\".")