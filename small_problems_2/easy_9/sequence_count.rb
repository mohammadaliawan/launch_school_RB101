=begin

Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count argument, 
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, 
while the starting number can be any integer value. If the count is 0, an empty list should be returned.

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : two integers, first = count, second = first number of a sequence
**Output** : array, each element is a multiple of the starting number

**Explicit Requirements/Rules/Boundaries**
- wrtie a method
- takes two integers
- first = count, second = first number of a sequence
- return an array
- same number of elements as the count
- each array element will be multiple of the first number

**Implicit Requirements/Rules/Boundaries**
- if count is zero return []


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 5, 1)
- Output: [1, 2, 3, 4, 5]

((4, -7))
[-7, -14, -21, -28]

[]
iterate from 1 to count
on each iteration  |3|
  - append (current_count*starting number) to [-7,14,-21,-28]




**Questions**
-


**Data Structures**
- input: integers
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
-


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def sequence(count,start)
  (1..count).map do |current_count|
    (current_count*start)
  end
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) #== []
