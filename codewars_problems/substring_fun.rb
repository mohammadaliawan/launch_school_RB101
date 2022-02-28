=begin
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, 
where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2
Note: Test cases contain valid input only - i.e. a string array or an empty array; 
and each word will have enough letters.


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of words
**Output** : return a new string 

**Explicit Requirements/Rules/Boundaries**
- concatenate the nth letter from each word
- to construct a new word
- n is the position of the word in the list
- first word in the array has position 0
- position == index of the string in the array
- extract the nth char from each string and concatnenate them to form a new word
- inputs will only be a string array or an empty array
- each word will have enough letters

**Implicit Requirements/Rules/Boundaries**
- empty array should return an empty string
- if there is only one word in the array return the first char of the word
- nth letter: n is the position of the word in the array, n start from 0, for strings also 
- if n = 0 extract the char at index 0
**Special Terms**
-


**Examples/Test Cases**



**Questions**
-


**Data Structures**
- nth_char(['yoda', 'best', 'has']) == 'yes'
"yes"
['yoda', 'best', 'has'] -> 

- input: array of strings
- Output: string
- Intermediate:
- Storage: ""

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an array of strings
- init a new string
- For each string in the array # access to the index of the array
  - extract the char at current index in current string
  - save that to a new string
- return the new string

**Implementation details**\
- INIT new_word to ""
- Iterate through the array of strings with index |current_word, current_index|
  - nth_letter = current_word[current_index]
  - append nth_letter to new_word
- return new_word


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def nth_char(words)
  new_word = ""

  words.each_with_index do |current_word, current_index|
    new_word << current_word[current_index]
  end
  new_word
end

p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'