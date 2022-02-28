=begin
Write function scramble(str1, str2) that returns true if a portion of str1 characters 
can be rearranged to match str2, otherwrise return false.

For example:

str1 is 'rkqodlw' and str2 is 'world' the output should be true.
str1 is 'codewaraaossoqqyt' and str2 is 'codewars' should return true
str1 is 'katas' and str2 is 'steak' should return false.


p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('codewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true

only lower case letter will be used (a-z). No punctuation or digits will be included.


------ PED:- 0 MIN to 12 MIN --------------


**Input** : two strings
**Output** :boolean

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes two arguments str1, str2
- return true if a portion of of str1 chars can be rearranged to match str2
- otherwise return false
- number of chars selected from str1 should be equal in length to str2
- 

**Implicit Requirements/Rules/Boundaries**
- the same char in str1 cant be reused


**Special Terms**
-


**Examples/Test Cases**
 scramble('rkqodlw', 'world') == true

 we need to select chars from str1 that when rearranged equal str2
 sorted alphabetically they would be the same


**Questions**
-


**Data Structures**
- input:strings
- Output: boolean
- Intermediate: arrays
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given two strings str1 and str2
- For each char in str2
  - check if it appears in str1
  - remove from str2
  - go to next char in str2
  - if a char does not appear in str1
  - return false
- return true if all iterations are complete no char is found which does not appear in str1


**Implementation details**

scramble('avaass', 'jjss') == false
- make duplicates of str1 and str2
- iterate through str2_chars# each_char
  - IF curretn_char_str2 is included in str1_chars
      - remove only one instance of it from str1_chars
    ELSE
      - return false
    END
- RETURN true


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def scramble(str1, str2)
  str2.each_char do |char|
    if str2.count(char) <= str1.count(char)
      next
    else
     return false
    end
  end
  return true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('codewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true