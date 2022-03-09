# Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

# Notes:

# Only lower case letters will be used (a-z). No punctuation or digits will be included.


# p scramble('rkqodlw', 'world') == true
# p scramble('cedewaraaossoqqyt', 'codewars') == true
# p scramble('katas', 'steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true

=begin

------ PE:- 0 MIN to 5 MIN --------------


**Input** : two strings
**Output** : boolean

**Explicit Requirements/Rules/Boundaries**
- scramble(str1, str2)
- returns true if a portion of str1 characters can be rearranged to match str
- otherwise returns false
-  Only lower case letters will be used (a-z).
- No punctuation or digits will be included.

**Implicit Requirements/Rules/Boundaries**
- chars in str1 dont need to be consecutive
- each char frp, str1 can only be used once

**Special Terms**
-


**Examples/Test Cases**
# p scramble('rkqodlw', 'world') == true

# p scramble('cedewaraaossoqqyt', 'codewars') == true

# p scramble('katas', 'steak') == false

# p scramble('scriptjava','javascript') == true

# p scramble('scriptingjava','javascript') == true


**Questions**
-


--------------- DA:- 6 MIN to 15 MIN------------

# p scramble('cedewaraaossoqqyt', 'codewars') == true
'cedewaraaossoqqyt' ->  'codewars

str1-> [chars]
str2 -> [chars]



**Data Structures**
- input: strings
- Output: boolean
- Intermediate: array
- Storage:


**High Level Algorithm**

- Given two strings str1 and str2
- convert both strings to arrays
- For all chars in str2_chars check if they appear in str1_chars
  - iterate over str1_chars
    - if current
  - if they do
    - return true
  - otherwise
    - return false
    








- Given two strings str1 and str2 'cedewaraaossoqqyt', 'codewars
- convert both strings to arrays of chars # str1_chars, str2_chars #chars
- iterate over the str2_chars
  - if current char is included in the str1_chars
    - get the index of current char in str_1 chars
    - remove the char at that index
  - otherwise,
    - return false
  -end
  
- after all iterations are complete return true


**Implementation details**
-  remove the first occurance of current_char from str1 chars


-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent**
=end

def scramble(str1, str2)
  str1 = str1.dup
  str2_chars = str2.chars
  
  str2_chars.all? do |char|
    str1.sub!(char, "")
  end
  
  # str2_chars.each do |current_char|
  #   if str1_chars.include?(current_char)
  #     str1_chars.delete_at(str1_chars.index(current_char))
  #   else
  #     return false
  #   end
  # end
  # return true
end

  
  
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true