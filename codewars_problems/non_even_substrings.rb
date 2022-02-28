=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string of digits
**Output** : integer, number of odd numbered substrings

**Explicit Requirements/Rules/Boundaries**
- def a method that takes a string of digits as input
- returns the number of odd numbered substring that can be formed from the given string
- odd numbered substrings:
  - odd numbered - value of digits in the substring is odd if substring converted to an integer is odd, string is considered odd numberd
  - substring - any consecutive subsequence of chars in the string

**Implicit Requirements/Rules/Boundaries**
- if a odd numbered substring occurs multiple times count it as many times
- single digit strings also count as valid substrings
- whole string also count as valid substrings


**Special Terms**
-


**Examples/Test Cases**
p solve("1341") == 7
"1341" -> "1", "3", "1", "13", "41", "341", "1341"
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28


**Questions**
-


**Data Structures**
- input:string 
- Output:integer
- Intermediate:
- Storage:[]

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string of digits
- Find all possible substrings for the given string
- Select the substrings which are odd in value
- return the count of odd numbered substrings


**Implementation details**\
- INIT an empty array # substrings
- Find all possible substrings for the given string
  - iterate for starting index from 0 to last index
    - iterate for end index from 0 to last index
      - append string[startingindex..endindex] to substrings array

- iterate over the array of substrings
  - select the ones for which the condition current_substring.to_i.odd? 
  - save to odd_substrings array

- Return the size of the odd_substrings array

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def solve(number_str)
  substrings = []
  
  (0...number_str.size).each do |start_index|
    (start_index...number_str.size).each do |end_index|
      substrings << number_str[start_index..end_index]
    end
  end

  substrings.count do |substring|
    substring.to_i.odd?
  end
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28