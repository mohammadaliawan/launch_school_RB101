=begin

Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.


p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer
**Output** : string 

**Explicit Requirements/Rules/Boundaries**
- given an integer
- convert the integer to "digit*placevalue + digit*placevalue + ..."
- if a digit at a certain place value is zero then that doesnt need to shown in the expanded form
- find the digits at all placevalues in the integer
- "4*10**1 + 2*10**0" 

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
p expanded_form(70304) == '70000 + 300 + 4'

[7, 0, 3, 0, 4] -> [70_000 0 300 0 4] -> [70000, 300, 4] -> "70000 + 300 + 4" 


**Questions**
-


**Data Structures**
- input: integer
- Output: string
- Intermediate:array of integers
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an integer
- find all the digits in the integer
  - # digits.reverse
- multiply each digit by its placevalue
- convert the new numbers to a string with " + "


**Implementation details**\
- Given an integer assigned to num
- INIT digits to an array of digits in num [4 0 3 0 7]
- INIT new array to []
- INIT place_value to 0
- For each integer in the digits array
  - current_integer *10**place_value
  - prepend the result to new array
  - increment place_value by 1
- delete all 0s from the new array
- Join integers in new array by " + "
- return the new string


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end
def expanded_form(num)
  digits = num.digits

  expanded_digits = []

  place_value = 0
  digits.each do |digit|
    result = digit*(10**place_value)
    expanded_digits.prepend(result) if result > 0
    place_value += 1
  end

  expanded_digits.join(" + ")
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

