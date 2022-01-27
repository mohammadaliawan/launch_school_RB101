=begin

Write a method that takes two Array arguments in which each Array
contains a list of numbers, and returns a new Array that contains
the product of each pair of numbers from the arguments that have the same index.
You may assume that the arguments contain the same number of elements.

Examples:

Copy Code
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : two arrays of nums
**Output** : one array that contains the product of the same indexed elements

**Explicit Requirements/Rules/Boundaries**
-write a method
- take two array arguments
- array shall contain numbers
- return a new array
- that has the products of the same indexed elements from the given arrays
- assume that the arguments contain the same number of elements


**Implicit Requirements/Rules/Boundaries**
- The order of the elements in the results array needs to be the same as in given arrays


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output
**Examples/Test Cases**
- input: [3, 5, 7], [9, 10, 11]
- Output: [27, 50, 77]

[[3, 9], [5, 10], [7, 11]] -> [27, 50, 77]

**Questions**
-


**Data Structures**
- input: arrays
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given two arrays of numbers #assume the same number elements
- results init to []
- For each number in the first array
  - find the product of current element with the same index element in the second array
  - save the current product in the results array
- return the []


**Implementation details**
- #each_with_index to interate over the first array


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map {|nums| nums[0]*nums[-1]}



#   array_1.map.with_index do |num_1, idx|
#     num_1 * array_2[idx]
#   end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]