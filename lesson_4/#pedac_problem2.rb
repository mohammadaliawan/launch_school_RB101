#pedac_problem2.rb
=begin
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

input: a string
ouput: an array of substrings of given string which are palindromes

Rules:
Explicit:
- return all the subtrings of the given string that are palindromes
- palindromes are words that spell the same backwards and forwards
- Palindrome words are case sensitive, "Mom" is not a palindrome

Implicit:
- the returned substrings in the array should be in the same order as they appear in the string
- if substring contains the same two chars, then it is a valid palindrome "dd"
- a single char cannot be a palindrome
- if no palindromes found return an empty array
- if input is an empty string return an empty array

Questions?
Can the input string contain spaces? should the spaces be considered part of palindrome
Can the input string contain numbers or special chars?

What is a substring? a substring is a contiguous sequence of characters within a string
What is a palindrome?
Will the input always be a string

DS/ALGO:

input: a string
ouput: array

Algorithm:
Given a string without spaces or special chars

Get all the possible two character substrings and store in an array
  the order of the substrings in the array should be the same as in the string
Iterate through starting_index of substring (0..string.size - 2)
  For each starting_index iterate through the length of substring (2 to string.size -starting_index)
   using string element reference get the substring for current starting_index and current length of substgring

starting_index ---> 0 to string.size - 2
end_point ---> 0 to string.size - 1

starting_index --> 0..string.size - 2
length_of_subs --> 1 to string.size -starting_index


Init a new empty array to store the palindrome substrings

iterate through the array of all substrings
  if the substring is a palidrome
    append to new array above
    end

Psuedocode:

SUBPROCESS "find_substrings"
  GIVEN String str
  SET substring_ary = []

  SET starting_index = 0
  SET length_substring = 2

  WHILE starting_index <= string.size - 2
    WHILE length_substring <= (string.size - starting_index)
      substrings_ary << string[starting_index], length_substring]
    END
  END

END

SUBPROCESS Palindrome?(word)
  reversed word == word
END

Define a method that accepts a string str as an argument

SET substrings_ary = SUBPROCESS "find_substrings"

SET result = []

SET counter = 0

WHILE counter < substrings_ary.size
  IF SUBPROCESS "is_palindrome?(substring) == TRUE
    append substring to the result array
    end
END

RETURN result

=end

def find_substrings(str,min_chars)
  substring_ary = []

  starting_index = 0

  while starting_index <= (str.size - min_chars)
    length_substring = min_chars
    while length_substring <= (str.size - starting_index)
      substring_ary << str[starting_index, length_substring]
      length_substring += 1
    end
    starting_index += 1
  end
  substring_ary
end


def palindrome?(word)
  word.reverse == word
end

def palindrome_substrings(str)
  substring_ary = find_substrings(str,2)

  result = []
  counter = 0

  while counter < substring_ary.size
    if palindrome?(substring_ary[counter])
      result << substring_ary[counter]
    end
    counter += 1
  end
  result
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []

starting_index = 0 ---> string.size - min_chars

length = min_chars ---> string.size - starting_index
def substrings(string, min_chars)
  
  substrings_ary = []
  
  0.upto(string.size - min_chars) do |starting_index|
    min_chars.upto(string.size - starting_index) do |length|
      substrings_ary << string[starting_index, length]
    end
  end
  
  substrings_ary
end

p substrings("hello", 2)