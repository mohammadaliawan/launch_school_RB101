=begin

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

PEDAC:

U:

input: string (words)
output: sum of the ASCII values of each char in the string

Explicit:
- The ASCII string value is the sum of the ASCII values of every character in the string.
- String#ord to determine the ASCII value of a character

Implicit:
- eompty string has an ASCII value of 0

DS:

- input: string
- output: integer

Algo:

Given a string
- check if the string is empty
- the ascii value is zero if string is empty
- if not empty
- Then For each character in the string
- get the ascii value of the character
- add it to the total ascii value

=end

def ascii_value(words)
  total_ascii_value = 0
  return total_ascii_value if words.empty?

  words.each_char do |char|
    total_ascii_value += char.ord
  end
  total_ascii_value
end







p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0