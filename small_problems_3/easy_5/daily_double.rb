=begin
Write a method that takes a string argument and returns a new string that contains the value of
the original string with all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

------ PED:- 0 MIN to 12 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argument
- return a new string
- value of the orginal string
- with all consecutive duplicate chars replaced with a single char
- cannot use the String#squeez method or the squeeze!


**Implicit Requirements/Rules/Boundaries**
- any repeating substring should not be reduced to a single substring
- only sonsective single chars need to be replaced
- if there is only a single char in the string repeating we need to return that single char
- if the input is a single char, return a single char
- empty string input should return an empty string
- no special chars in the given string
- input will always be a valid string
-


**Special Terms**
-


**Examples/Test Cases**
- input: 'ddaaiillyy ddoouubbllee'
- Output: 'daily double'
- storage: "daily"

- go through this string char by char
- make a string ""
- we move a char to the empty string
- then go the next char in the given string
- if the last char in the new string is the same as the current char
    - then move on to the next char
- if it not the same, move that char to the new string


**Questions**
-


**Data Structures**
- input: string
- Output: a new string
- Intermediate: array
- Storage: string

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string # 'ddaaiillyy ddoouubbllee'
- initialize an empty string # result
- convert the string to an array of chars [d, d, ..]
- For each char in the array  #
  - if the last char of the result string is equal to the current char#string[-1] == current_char
    - dont store the char in the result string
    - move on the next char
  - otherwiese, if the last char in the result string is not equal to the current char
    - store the char in the result string
- return the result


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def crunch(string)
  result = ""

  string.each_char do |current_char|
    result << current_char unless result[-1] == current_char
  end

  result
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''