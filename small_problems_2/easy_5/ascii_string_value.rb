=begin
Write a method that determines and returns the ASCII string value of a string that is
passed in as an argument. The ASCII string value is the sum of the ASCII values of
every character in the string. (You may use String#ord to determine the ASCII value
of a character.)

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

------ PED:- 0 MIN to 12 MIN --------------

**The Problem -**
- Write a method that
- determines and returns the ASCII string value of a string
- The ASCII string value is the sum of the ASCII values of
  every character in the string
- use String#ord

**Input** : string
**Output** : integer which is the sum of the ASCII values for each char in the string

**Explicit Requirements/Rules/Boundaries**
- define a method
- that determines and returns the ASCII string value of a given string
- ASCII string value: sum of the ASCII values of every char

**Implicit Requirements/Rules/Boundaries**
- single char strings return the ordinate for that char
- for empty string ASCII value return zero


**Special Terms**
-


**Examples/Test Cases**
- input: 'Four score' = 70 + 111 + 117 + 114 + 32 + 115 + 99 + 111 + 114 + 101
- Output: 984

- input: ""
- output: 0

- input: "a"
- output: "a".ord


**Questions**
-


**Data Structures**
- input: string
- Output: integer
- Intermediate: array
- Storage:

--------------- A:- 18 MIN to 20 MIN------------

**Algorithm**
- Given a string "Four Score"
- make a list of chars in the string # array
- transform the list of chars to a list of their respective ASCII values
- sum the ASCII values in the list


**Implementation details**
- Given "Four score"
- make a list of chars in the string # array
  - String#chars --> array of chars
- ["F", "o",...] --> [114, 111, ]
  - Array#map
- sum the [111, 114,..]
   Array#sum


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def ascii_value(string)
  string.chars.map{|char| char.ord}.sum

end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0