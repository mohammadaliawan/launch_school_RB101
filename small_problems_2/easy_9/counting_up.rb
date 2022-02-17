=begin

Write a method that takes an integer argument, and returns an Array of all integers,
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

Copy Code
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer > 0
**Output** : array of all integer between 1 and the argument

**Explicit Requirements/Rules/Boundaries**
- Write a method
- Takes an integer argu
- returns an array of all integers in sequence
- between 1 and given integer
- input will always be a valid positive integer 


**Implicit Requirements/Rules/Boundaries**
- 1 and the given number are to be included in the returned array
- if given number is 1, return [1]


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: -5
- Output: [-5, -4, -3, -2, -1]

if num > 0
- make an empty array []
- append 1 to the array
- add 1 to the current number
- append that to the array
- keep going until the current number is equal to given number

if num < 0
- make an empty array []
- append num to array
- add 1 to the current_number
- append to the array
- keep going until num > -1

- make an empty array []
- prepend given number to the array
- subtract 1 from the given number
- prepend that number to the array
- keep going until the current number is equal to 1

(1..num).to_a

**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# def sequence(num)
#   nums_ary = []

#   until num < 1
#     nums_ary.prepend(num)
#     num -= 1
#   end
#   nums_ary
# end

# def sequence(num)
#   nums_ary = []

#   current_number = 1

#   until current_number > num 
#     nums_ary.push(current_number)
#     current_number += 1
#   end
#   nums_ary
# end

# def sequence(num)
#   if num > 0
#     (1..num).to_a
#   elsif num < 0
#     (num..-1).to_a
#   end
# end

def sequence(num)
  nums_ary = []

  if num > 0
    until num < 1
      nums_ary.prepend(num)
      num -= 1
    end
  elsif num < 0
    until num > -1
      nums_ary << num
      num += 1
    end
  end
  nums_ary
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1]