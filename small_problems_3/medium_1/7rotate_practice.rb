=begin

If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. 
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument,
and returns the maximum rotation of that argument. 

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer
**Output** : integer, max rotation of the given number

**Explicit Requirements/Rules/Boundaries**
- write a method that takes an integer as argument
- returns the max rotation of the argument
- max rotation:
  735291 -> 352917 - no digits are fixed
  352917 -> 329175 - 1st digit is fixed, from the remaining number left most digit is removed  and appended to the end of the given number
  329175 -> 321759 - 1st 2 digits are fixed, remaining number is rotated
  321759 -> 321597 - 1st three are fixed
  321597 -> 321579 - 1st four are fixed

  1. fix the first x digits x from 0 to size - 2
    a. rotating the last n digits n is from size to 2
      i. moving the left most digit of the nonfixed number to the end of the given number

  
  53 -> 35 - no digits are fixed, rotate the whole number
  
  105
  x is from 0 to 1, n is from 3 to 2
  105 -> 51 - no digits are fixed, 
  51  -> 015 - 

   
  
  
**Implicit Requirements/Rules/Boundaries**
- if single digit integer is provided return the int as it is
- leading zero gets dropped

**Special Terms**
-


**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an integer
- Find the number of digits in the number #number_length
- return int if number_length < 2
- For last n digits iterating from number_length to 2
  Subprocess- rotate the last n digits in current_number
    - convert the current_number to a string #current_num_str "1"
    - extract the last n chars from the current_num_str #last_n_digits
      -  str[-3..-1]
    - move the left most char of last_n_digits to the end of the current_num_str
      - current_num_str_<< last_n_digits[0]
    - convert the current_num_str to an integer
- reassign current_number to above



**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def rotate(int, n_digits)
  current_num_str = int.to_s "1234567"
  
  last_n_digits = current_num_str[-n_digits..-1] "234567" 

  current_num_str << last_n_digits[0]
end

def max_rotation(int)
  number_length = int.digits.size

  return int if number_length < 2

  current_number = int

  number_length.downto(2) do |n_digits|
    current_number = rotate(current_number, n_digits)
  end
  current_number
end

p max_rotation(735291)# == 321579
p max_rotation(3)# == 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
