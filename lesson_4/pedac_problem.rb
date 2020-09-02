=begin
# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to
#          uppercase. (Reminder: a palindrome is a word that reads
#          the same forwards and backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

#      Implicit requirements:
...........If a word is already capitalized and not a palindrome it will remain the same
#        - the returned string shouldn't be the same string object.
#        - if the string is an empty string, the result should be an empty array
#          Words are considered to be groups of characters seperated by a space.
#          Space is not considered to determine if a group of chars is a palindrome
          words will be seperated by a single space both in the input and the ouput
Algorithm:

Given a string of words seperated by spaces
- Init a new empty array to store the final result
- Convert the string to an array of words (words are seperated by spaces)
- Create method that would return true if a string is a palindrome false otherwise
- Iterate through the array of words
    if the word is a palindrome change case to uppercase and append to the new empty array
    if it is not then append it as it is to the new array
  Convert the result array to a string seperated by a single space

Psuedocode:

Accept a string str

Init a new array empty array result = []

Convert the string to an array of words
  SET words_ary = str.split(" ")

SUBPROCESS Palindrome?(word)
  word.reverse == word
END

Iterate through the array of words
  IF SUBPROCESS Palindrome?(word) = TRUE
    append word.upcase to result array
  ELSE
    append word to result
  END
END

Convert the result array to a string seperated by spaces
  result.join(" ")

=end

def palindrome?(word)
  word.reverse == word
end

def change_me(str)
  result = []

  words_array = str.split

  words_array.each do |word|
    if palindrome?(word)
      result.push(word.upcase)
    else
      result.push(word)
    end
  end
  result.join(" ")
end

p change_me("We will meet at noon")# == "We will meet at NOON"
p change_me("No palindromes here") #== "No palindromes here"
p change_me("")# == ""
p change_me("I LOVE my mom and dad equally")# == "I LOVE my MOM and DAD equally"