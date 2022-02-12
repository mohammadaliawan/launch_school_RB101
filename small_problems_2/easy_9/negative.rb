=begin

Write a method that takes a number as an argument. If the argument is a positive number,
return the negative of that number. If the number is 0 or negative, return the original number.

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : number
**Output** : number, negative, 0 or positive

**Explicit Requirements/Rules/Boundaries**
- write a method
- if the argument is +tive number, return -tive of that number
- if the number is 0 or -tive, return the original number


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output
**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input: Integer
- Output: Integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a number
- If number greater than 0
  return -1 * number
- If number is less or equal to 0
  return number



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def negative(num)
  if num > 0
    -num
  else
    num
  end
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  