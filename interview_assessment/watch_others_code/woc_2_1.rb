=begin
You have to create a method that takes a positive integer number and returns the next bigger number
formed by the same digits.

12 => 21
513 => 531
2017 => 2071
If no bigger number can be composed using those digits, return -1:

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : +tive integer
**Output** : -1 or positive integer, next bigger number formed by the same digits

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a +tive integer as argument
- returns the next bigger number formed by the same digits as in the given number
  - next bigger number: the number that immediately comes after the given number but with the same
  digits
- return -1 if no bigger number can be formed


**Implicit Requirements/Rules/Boundaries**
- returned number must include all the digits
 

**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 2017
- Output: 2071

2017 -> [2 0 1 7] -> find all permutations of this array [[], [], []] -> convert all permuationback
to numbers -> sort the array in ascenging order -> the number after given number will be the next
bigger number


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a positive integer
- find all permutations of the given integer digits
- sort the permutatios in ascending order
- return the number after the given number in the list of permutations
- return -1 if the given number is the last number in the list


**Implementation details**\
- find all permutations of the given integer digits
  - get a list of all digits in the number
  - find all permutations of the digits greater than given number
    if perm is greater than given number 
  - return an array of all possible permutations
- return the number after the given number in the list of permutations
  - find the index of the given number in the array
  - if the index is the last index in the array
      return -1
  - else, return the number after the index


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def next_bigger_num(int)
  possible_nums = []
  int.digits.reverse.permutation do |perm| 
    if (perm.join.to_i) > int
      possible_nums << perm
    end
  end 
  
  possible_nums = possible_nums.map{ |num| num.join.to_i}

  if possible_nums.empty?
    -1
  else
    possible_nums.sort.first
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789)# == 123456798