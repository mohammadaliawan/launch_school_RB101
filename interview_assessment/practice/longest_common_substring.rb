=begin
Given an array of strings, find the longest common substring. 
If there are no common substrings return an empty string "".
single chars are not valid substrings

p common_substring(["hello", "helipad", "helio"]) == "hel"
p common_substring(["goodcar", "racecar", "car"]) == "car"
p common_substring(["hello", "goodbye"]) == ""

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings
**Output** : string, longest common substring

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of substrings as argu
- returns the longest common substring
  - longest: greatest in length
  - common: appears in all strings in the array
  - substring: string of consecutive chars in a string
- valid substrings are greater than or equal to 2 in length



**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
 common_substring(["goodcar", "racecar", "car"]) == "car"

 "racecar", "car"
 - longest common substring possible would be of the shortest string length
 - longest common substring possible would be equal to the shortest string
 - stop when length of substring is less than 2

common_substring(["hello", "helipad", "helio"]) == "hel"
"hello" - doesnot appear in all
"hell" - does not appear in all
"hel" - does appear in all 
return "hel"







**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- find the shortest string in the array by length
- go through the possible substring of shortest string starting with the longest one 
- if current_substring appears in all of the strings
  - return current substring
  otherwise,
    go the next smaller substring


**Implementation details**\
- *subprocess* -> find_longest_common_substring
  - iterate over the starting index from 0 to last_index of shortest_string
      iterate over the end index from last index to current_starting_index + 1
        extract current substring word[startindex...endindex]
        IF current_substring appear in all strings in words array
        return current_substring
        ELSE
        go to the next shorter substring
  - return ""

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def common_substring(words)
  shortest_string = words.min_by{|word| word.size}

  0.upto(shortest_string.size - 1) do |start_index|
    (shortest_string.size - 1).downto(start_index) do |end_index|
      current_substring = shortest_string[start_index..end_index]
      if words.all?{|word| word.include?(current_substring)}
        return current_substring
      end
    end
  end

  return ""
end

p common_substring(["hello", "helipad", "helio"]) #== "hel"
p common_substring(["goodcar", "racecar", "car"]) #== "car"
p common_substring(["hello", "goodbye"]) #== ""