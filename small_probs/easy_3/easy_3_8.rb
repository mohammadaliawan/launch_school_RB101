=begin

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true


input: string
output: boolean, true if palindrome, false otherwise

Rules:
Explicit:
- one argument to the method which is going to be a string
- return true if the string is a palindrome
- a palindtome reads the same forward and backward
- case, punctuation and spaces all matter

Implicit:
- - case matters
- puntuation, space all matter
- arguments can be a string of numbers, treat the same as any other string

Questions:
empty string? -> return true

Ds:
input: a string
output: boolean

Algo:

given a string
- Reverse the characters in the string
- If reversed string == the original string
  return true
  else
   return false
=end


def palindrome?(string)
  reversed_string = string.reverse
  
  string == reversed_string
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
