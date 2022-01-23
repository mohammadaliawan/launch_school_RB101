=begin
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.


remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


------ PED:- 0 MIN to 12 MIN --------------


**Input** :array of strings
**Output** : array of same string values except with the vowels removed

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of strings
- returns an array of same string values # new strings in the array and new array
- the new strings should have the vowels removed # replace with empty string

- vowels (a, e, i, o, u)

**Implicit Requirements/Rules/Boundaries
- also remove uppercase vowels from strings (A E I O U)
- order of the chars should remain the same
- if multiple vowel chars appear in the string, remove all
- removed char means replace with empty string 
- if all chars are removed from a string, return an empty string
- if no chars are removed, return the same string value

**Special Terms**
-


**Examples/Test Cases**
- input: [green YELLOW black white]
- Output: %w(grn YLLW blck wht)
  - [grn,"YLLW",  ], "YLLW" (a e i o u, A E I U O)
  - YELLOW

**Questions**
-


**Data Structures**
- input: array of string
- Output: a new array of new strings
- Intermediate:
- Storage: [], ""

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- create a set of vowels both lower case and upper case
- initialize a new empty array # result_ary
- For each string in the given array
  - create a new empty string #result_string
  - For each char in the current string
    - if the current char appears in the set of vowels
    - go to next char
    - otherwise, move the char to the empty string
  - save the result_string in the new array
- return the new array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****

=end

VOWELS = %w(A E I O U a e i o u)

def remove_vowels(strings)
 strings.map do |current_string|
    current_string.chars.delete_if{|char| VOWELS.include?(char)}.join
 end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']