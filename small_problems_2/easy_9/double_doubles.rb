=begin

A double number is a number with an even number of digits whose left-side digits are
exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 
444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, 
unless the argument is a double number; double numbers should be returned as-is.

Examples:


twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10


First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : number
**Output** : number * 2 if not a double number

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a number as argument
- returns 2 times the number provided as an argument, unless the argument is a double number
- double numbers should be returned as-is
- A double number is a number with an even number of digits
- whose left-side digits are exactly the same as its right-side digits

**Implicit Requirements/Rules/Boundaries**
- Single digit numbers are not double numbers
- floating point numbers are also not double numbers


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 334433
- Output: 668866

- how to check if it is a double number
  - if it has even number of digits 
  - if left digits are the same as right side digits
    - how to find out the right side digits and left side digits
      - convert the integer to a string "334433"
      - extract a substrings which are left side and right side digits "334" "433"
      - compare the left side and right side substring "334" == "433"
        - if they are equal then it is a double number
- return the number as is if it is a double number 
- return the number * 2 if it is not a double number 


**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given a number
- check if it is a double number
- if it is a double number
  return as is
- if it is not a double number
  return number * 2



**Implementation details**
- check if it is a double number
  - if it has even number of digits && if left digits are the same as right side digits
    
extracting left side and right side      
- convert the integer to a string "334433"
- extract a substrings which are left side and right side digits "334" "433"
  "103103"[0...(str.size/2)] = left side
  "103103"[(str.size/2)...str.size]
- compare the left side and right side substring "334" == "433"
- if they are equal then it is a double number

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def left_right_side_equal?(number)
  string_num = number.to_s

  left_side = string_num[0...(string_num.size/2)]
  right_side = string_num[(string_num.size/2)...(string_num.size)]

  left_side == right_side
end

def double?(number)
  number.to_s.size.even? && left_right_side_equal?(number)
end

def twice(number)
  unless double?(number)
    number * 2
  else
    number
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10