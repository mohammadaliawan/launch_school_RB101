=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the 
string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:

Copy Code
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : strihg
**Output** : boolean, true or false if all the alphabetic chars are uppercase

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argument
- returns a boolean 
- true if all the alphabetic chars are uppercase
- false otherwise
- non alphabetic chars should be ignored

**Implicit Requirements/Rules/Boundaries**
- empty string input should return true


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: '4SCORE!'
- Output: true

- remove the non alphabetic chars "SCORE"
- check if the rest of the chars are uppercase -> true

- input: ""
- Output: true



**Questions**
-


**Data Structures**
- input: string
- Output: boolean
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- return true if given string is empty
- make a new string by removing the non alphabetic chars
- if the chars in new string are all uppercase
    return true
  else
    return false
  end


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def uppercase?(str)
  str == str.upcase


  # new_str = str.gsub(/[^a-zA-Z]/, "")

  # !new_str.upcase! #  means all are uppercase, if truthy value
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

