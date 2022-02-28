=begin

Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1


------ PED:- 0 MIN to 12 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**
- write a method that takes a string full text and a search text 
- returns the count of how many times search text appears in the full text
- 


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
solution('abcdeb','b') == 2
'abcdeb' -> 1 + 1 = 2

solution('abcdeb', 'a') == 1
'abcdeb' -> 1 = 1

solution('abbc', 'bb') == 1
'abbc' -> 1

**Questions**
-


**Data Structures**
solution('abbc', 'bb') == 1



- input: strings
- Output: integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- init a counter = 0
- make a copy of the given string
- substitute the search text in the full text until no more substutions are possible
  - on each successful substitution increment a counter by 1
- return the counter


**Implementation details**\
- INIT counter to 0
- make a copy of the given full text
- WHILE substitution of search text in full text copy returns truthy value
    increment counter by 1
  END
- RETURN counter


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def solution(full_text, search_text)
  full_text.scan(search_text).size`



  # full_text = full_text.dup

  # counter = 0

  # while full_text.sub!(search_text, "")
  #   counter += 1
  # end
  # counter
end




p solution('abcdeb','b') #== 2
p solution('abcdeb', 'a') #== 1
p solution('abbc', 'bb') #== 1
