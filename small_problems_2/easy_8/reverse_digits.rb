=begin

Write a method that takes a positive integer as an argument and returns that number with its 
digits reversed. 

Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, 
which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't have any leading zeros.

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :positive integer
**Output** : positive integer with the digits reversed

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes a positive integer as argument
- returns a positive integer with the digits of the argument in reverse
- no need to consider leading zeros in the argument
- return value also does not need to have leading zeros.

**Implicit Requirements/Rules/Boundaries**
- if given a single digit number, return the same number


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input:12213
- Output: 31221

12213 -> "12213"-> "31221" -> 31221

input: 12000 
output: 21

12000 -> [0,0,0,2,1] -> "00021" -> 21


1 -> 1
 



**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage: []

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a positive integer
- get the list of digits in the number in reverse order
- convert the list of digits to a string of digits
- convert the string to an integer


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def reversed_number(int)
  int.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

