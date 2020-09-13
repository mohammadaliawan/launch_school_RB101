=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.


input: two strings
output: integer

Rules:
Explicit: 
- given two strings, how many letters need to deleted/removed/ignored from both of them in total to make them anagrams of each other
- two words are anagrams of each other if they contain the same characters(could be in different orders)
- case doesn't matter, inputs will be in lowercase
Implicit:
- empty strings are anagrams too
- all letters could be removed from both strings to get empty strings to get to an anagram
- no spaces in strings in the input
- no special chars


DS: 
input: two strings
output: integer

Algo:

Given two string, "hello", "ello" -> "ello"


- Check for common character in both strings
  - create a new empty string (common_chars) for common characters in both strings ""
  - for each character in the first string
    look for a match in the second string
      if its there push it to the new empty string

- remove the uncommon characters from both one by one and keep a track of how many have been removed in total.
  - Compare the common_chars to both strings one by one
    - create copies of the strings
    - store the initial lengths of both strings and sum them up
    - Remove the uncommon characters from both strings
    - get the length of both strings with the removed uncommon characters
    - subtract sum_of_lengths_initial - sum_of_lengths_final



=end

def find_common_chars(str1, str2)
  common_chars = ''
  
  str2 = str2.dup
  
  str1.chars.each do |char|
    if str2.match(char)
      common_chars << char
      str2.sub!(char, "")
    end
  end
  common_chars
end
  
def anagram_difference(str1,str2)
  common_chars = find_common_chars(str1, str2) 
  
  (str1.length - common_chars.length) + (str2.length - common_chars.length)
end















=end