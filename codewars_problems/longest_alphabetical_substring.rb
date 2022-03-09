# Find the longest substring in alphabetical order.

# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

# The input will only consist of lowercase characters and will be at least one letter long.

# If there are multiple solutions, return the one that appears first.

# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

=begin

------ PE:- 0 MIN to 5 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**
- Find the longest substring whose chars are in alphabatical order
- The input will only consist of lowercase characters 
- input will be at least one letter long
- If there are multiple solutions, return the one that appears first.

**Implicit Requirements/Rules/Boundaries**
- if the input is a singel char return that single char
- if there are no alphabaticla substrings found return the first char


**Special Terms**
-


**Examples/Test Cases**
# p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'


**Questions**
-


--------------- DA:- 6 MIN to 15 MIN------------

# p longest('asd') == 'as'

"asd" -> "as"
[a s d] -> "a", "as", "d"

# p longest('abcdeapbcdef') == 'abcde'

[a b c d e..] -> 

alphabetical order?
- conver the stirng to an array
- if sorted array == the original array
  - string is in alphabetical order

**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage: array


**High Level Algorithm**
- Given a string
- Find all possible alphabetical substrings
- Find the longest substring from these


**Implementation details**
- Find all possible alphabetical substrings
  - convert the string to an array of chars
  - init new array #substrings
  -  create a temp string = current_char
  - iterate over the array of chars with index [a a a b b d c t t]
    - if index == 0
      append temp string to substring
    - ELSE IF current_char >= chars_ary[index - 1]
      - append curent_char to temp_string
      ELSE IF current_char < chars_ary[index - 1]
        - append temp to substrings
        - temp = current_char
      END
  - append temp string to substrings


  - init new array #substrings
  - iterate from 0 to last index of given string |start|
    - iterate from currentindex to last index |end|
      - extarct the current substring [start, end]
      - if current substring is alphabetical?
        - save that to new array substring
- Find the longest substring from these 
  - iterate over substrings array
    - return the first substring with longest length

alphabetical order?
- conver the stirng to an array
- if sorted array == the original array
  - string is in alphabetical order

-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent**
=end

def alphabetical?(substring)
  substring.chars.sort == substring.chars

end

def longest(string)
  substrings = []
  
#   temp = string[0]
  
#   string.chars.each_with_index do |current_char, current_idx|
#     if current_idx == 0
#       substrings << temp
#     elsif current_char >= string[current_idx - 1]
#       temp << current_char
#     elsif current_char < string[current_idx - 1]
#       substrings << temp
#       temp = current_char
#     end
#   end
  
#   substrings << temp
  
  0.upto(string.size - 1) do |start|
    start.upto(string.size - 1) do |end_idx|
      current_substring = string[start..end_idx]
      if alphabetical?(current_substring)
        substrings << current_substring
      end
    end
  end

  substrings.max_by{|substring| substring.size}
end


p longest('asd') == 'as'
p longest('nab')== 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'