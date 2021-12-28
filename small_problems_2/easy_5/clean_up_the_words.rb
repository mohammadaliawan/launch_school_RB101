=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic
characters, write a method that returns that string with all of the non-alphabetic characters
replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only
have one space in the result (the result should never have consecutive spaces).


cleanup("---what's my +*& line?") == ' what s my line '

------ PED:- 0 MIN to 12 MIN --------------

**The Problem**
- Given a string that consists of some words (all lowercased)
- and an assortment of non-alphabetic characters
- write a method that returns that string 
- with all of the non-alphabetic characters replaced by spaces
- If one or more non-alphabetic characters occur in a row
- you should only have one space in the result 
- the result should never have consecutive spaces

**Input** : string
**Output** : string

**Explicit Requirements/Rules/Boundaries**
- given a string consisting of some words (all lowercased) and non alphabetic chars
- replace the non-alphabetic chars with spaces
- if one or more non-alpha chars in a row, replace with a single space
- 

**Implicit Requirements/Rules/Boundaries**
- If the consecutive spaces occur after non alph achars have been replaced with single space
those spaces also needs to be replaced with a single space


**Special Terms**
- words - 


**Examples/Test Cases**
- input:
- Output:


**Questions**
- same string


**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage:

--------------- A:- 18 MIN to 20 MIN------------

**Algorithm** "---what's my +*& line?"
- make a list of all alphabetic chars # ALPHABETS} ('a'..'z').to_a + [" "]
- convert the string to an array of chars # chars_array[-, -, -, w, h, a, t, ', s, ' ', m, y, '']
- make an empty array to store the chars # result []
- iterate through the chars_array
  - if the current char is included in the list of alphabetic chars
    if current char is a space
    - append the current char to result array unless the previous char was a space
    else
    - append the current char to result array
  - if the current char is not included in the list of alphabetic chars
    - append a space to result array unless previous char is a space
- join the result array to a string

**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

VALID_CHARS = ('a'..'z').to_a

def cleanup(sentence)
  chars_list = sentence.chars

  result = []

  chars_list.each_with_index do |char, index|
    if VALID_CHARS.include?(char)
      result << char
    else
      result << " " unless result.last == " "
    end
  end
  result.join
end

def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(" ")
end


p cleanup("---what's my +*& line?") #== ' what s my line '