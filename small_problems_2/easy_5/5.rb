=begin

Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of the
non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters
occur in a row, you should only have one space in the result (the result should never have
consecutive spaces).

Examples:

Copy Code
cleanup("---what's my +* line?") == ' what s my line '

PEDAC:

U:
Write a method that has:
-input: a string consisting of words and non alpha chars
- output: a string with non alpha chars replaced by space

Explicit:
- string will contain words and non alpha chars
- all chars are lowercase
- replace the non alpha chars with spaces
- if more than one non alpha chars in a row, replace with a single space
  -the result should not have consecutive spaces

Implicit:
- Original spaces shall remain as is
- if two consecutive spaces, then replace one of the spaces by emtpy string

Questions:
- WHat are words? delimited by spaces
- Do I mutate the string or not? Yes

DS:

input: string
output: string
dictionary : an array of alphabetic chars

Algo:

# Mutating Method Solution

- Make a Valid Chars look up dictionary
- Replace the chars in original string which are non alpha with spaces
  - For each char in the orginal string
      - if the current char is included in the VALID_CHARS
          go to the next char
      - if it is not
        - using the current index, reassign the char at current index to a space
- Delete any mulitple spaces in the original string
  - Lookup multiple spaces in the string
  - replace with a single space
      - iterate through the string in string again
      -
- Return the original string

# Non Mutating Method solution

- Make a valid_chars look up dictionary
- Make an empty collection to save valid chars in the string # valid_chars_in_string
- Split the string into a collection of chars
- For each char in the collection
    - if the char is included in the valid chars dictionary
       - append it to the valid chars collection unless the previous char in the valued chars
         collection is a space'
    - if the char is not included in the valid chars set
       -

=end

VALID_CHARS = ("a".."z").to_a + [" "]


# def cleanup(string) # Mutating Method Solution
#   p string.object_id
#   string.chars.each_with_index do |char, index|
#     if VALID_CHARS.include?(char)
#       next
#     else
#       string[index] = " "
#     end
#   end
#   p string.object_id
#   string.squeeze!
# end

p cleanup("---what's my +* line?") == ' what s my line '