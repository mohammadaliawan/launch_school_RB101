=begin
Given an array of strings made only from lowercase letters, return an array of all
characters that show up in all strings within the given array (including duplicates).
For example, if a character appears 3 times in all strings but not 4 times, you need
include that character 3 times in the final answer.

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

** Problem Requirements **

Input: array of strings
return: array of chars

**Restate**
- given an array of strings with only lowercase letters
- return an array of all those chars that are included in all the strings
- duplicates count as seperate chars

**Rules / Boundaries (Check test cases)**


**Explicit**
- return an array of chars that appear in all strings
- duplicates count as seperate chars

**Implicit**
- if there are no common chars among all strings return an empty array

** Terms **

**Questions**
- only lowercase english letters only? yes
- do the chars have to be in alphabatical order? yes


** Data Structures**

- input: array of strings
- Output: array of strings
- Intermediate: none
- Storage: array

Example:
'bella', 'label', 'roller'
"bela" --> bella, label, roller



**Algorithm**
given an array of strings
- compare each char in the first string to each of the remaining strings in the array
  - if the char appears in all strings 
    - select that char and store in a seperate array
- return the array of selected chars


** Implementation details **
Subprocess - compare each char in the first string to each of the remaining strings in the array
- Make a copy of the given array - deep copy - str_ary
- Set selected_chars = []
- Remove the first string from the str_ary
- for each char in the first_str_chars [b e l l a]
 - set flag equal to true
 - for each string in the str_ary [label, roller]
  - if the current char in first_str_chars appears in the current string in str_ary #inlcude?
     - remove that char from the current string
  - else
     - set flag equal to false
     - break
 - append current char to selected_chars if flag == true
 



=end

# def common_chars(str_ary)
#   str_ary = str_ary.map {|str| str.dup }

#   selected_chars = []

#   str_ary.pop.chars.each do |char|
#     flag = true
#     str_ary.each do |str|
#       if str.include?(char)
#         str.sub!(char, "")
#       else
#         flag = false
#         break
#       end
#     end
#     selected_chars << char if flag == true
#   end

#   selected_chars
# end

# Refactored

def common_chars(str_ary)
  str_ary = str_ary.map {|str| str.dup }

  selected_chars = str_ary.shift.chars.select do |char|
    str_ary.all? do |str|
      str.sub!(char, "")
    end
  end

  selected_chars
end

p common_chars(['bella', 'label', 'roller']) #== ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) #== ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) # == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) #== []