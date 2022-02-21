=begin
Write a method to find the longest common prefix string among an array of strings. If there are no common prefix
return an empty string "".

Example:

input: ["Flower", "flow", "flight"]
Output: "fl"

Example_2:

input: ["dog", "racecar", "car"]
Output: ""
Explaination: There is no common prefix among the input strings

Note:
All given inputs are in lowercase letters a-z

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"

=end

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings
**Output** : string which is the longest common prefix among the strings

**Explicit Requirements/Rules/Boundaries**
- Write a method
- takes an array of strings as argu
- returns a string of the longest common prefix
  - prefix: any chars that appear at the beginning of a string
  - common: appears in all strings in the array
  - longeest: having the largest length - having the most number of chars
- return empty string if no common prefix
- All given inputs are in lowercase letters a-z

**Implicit Requirements/Rules/Boundaries**
- if the strings are all equal return a copy of the strings
- no mutation of strings or array allowed
- the whole string could be a valid prefix
**Special Terms**
-


**Examples/Test Cases**
common_prefix(["flower", "flow", "flight"]) == "fl"

"flower", "flow", "flight"



"flower" -> "f", "fl", "flo", "flow", "flowe", "flower"
"flow" -> "f", "fl", "flo", "flow"
"flight" -> "f", "fl", "fli", "flig", "fligh", "flight"

["f", "fl"] -> "fl"

common_prefix(["dog", "racecar", "car"]) == ""
"dog" -> "d" ...
"racecar" -> "r" ...
"car" -> "c" ...

[] -> ""

common_prefix(["throne", "throne"]) == "throne"
"throne" -> 


**Questions**
-


**Data Structures**
["","", ""] -> [["", ""], [""..]..] -> ["", ""] -> ""
- input: array of strings
- Output: string
- Intermediate: array of array of strings
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an array of strings
- return "" if first chars of each string are not the same
  - init first_char to first string first char
  - UNLESS first char of all strings in array are equal to the first_char of first string
      return ""
    ELSE
    - Find all the possible prefix for all the strings
    - Find the prefix which are common among all strings
      - In the first prefix subarray select the strings which appear in all of the subarrays
    - Return the prefix with the longest length
  - 

Solution-2:

The longest common prefix possible would be of the length of the smallest string in length
- init a results string ""
- Compare each char at the same index in the strings for index from 0 to last index of smallest string , 
  if they are the same in all three, 
    store that char in a string,
  if they are not the same
    stop checking further chars
    return the result


**Implementation details**\
- subprocess- find_all_prefix(words)
- init an [] # prefixes
  - Iterate over the array of strings - For each string
    - subprocess - find_prefix(word) find all the substrings that start with the first char
      - init current_string_prefix to []
      - iterate over the length of substring from 1 to string length
        - extract a substring starting with index 0 and of current length
        - add the current substring to the current_string_prefix
    - add the current_string_prefix to prefix

subprocess - find_common
- init common_prefix to []
    - for each string in the first subarray
      - if current string is included in all the subarrays of prefixes
        - save it to the common_prefix array

Solution 2:
1. FInd the smallest string in the array by length
2. Compare each char at the same index in the strings for index from 0 to last index of smallest string , 
      INIT result = ""
      iterate over the chars and indices of the smallest string
        - IF the current char in the smallest string is equal to the respective chars in all the remaining strings
          - append that char to the result string
          ELSE 
            RETURN result string


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def common_prefix(words)
  smallest_string= words.min_by{|word| word.size}

  result = ""

  smallest_string.chars.each_with_index do |current_char, current_index|
    if words.all?{|word| word[current_index] == current_char}
      result << current_char
    else
      return result
    end
  end
  result
end

# def find_prefix(word)
#   current_string_prefix = []

#   1.upto(word.size) do |length|
#    current_string_prefix << word[0, length]
#  end
#  current_string_prefix
# end

# def find_all_prefix(words)
#   prefixes = []
#   words.each do |word|
#     prefixes << find_prefix(word)
#   end
#   prefixes
# end

# def find_common(prefixes)
#   first_word_prefix = prefixes.first

#   first_word_prefix.select do |string|
#     prefixes.all? {|word_prefixes| word_prefixes.include?(string)}
#   end
# end

# def first_chars_same?(words)
#   first_char = words[0][0]

#   words.all?{|word| word[0] == first_char}
# end

# def common_prefix(words)
#   return "" unless first_chars_same?(words)

#   prefixes = find_all_prefix(words)

#   common_prefix = find_common(prefixes)

#   common_prefix.max_by {|prefix| prefix.size}
# end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
