=begin

Write a method that takes two Array arguments in which each Array
contains a list of numbers, and returns a new Array that contains
the product of every pair of numbers that can be formed between the
elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 8 MIN --------------


**Input** : two arrays of integers
**Output** : one array containing products of all combinations

**Explicit Requirements/Rules/Boundaries**
- given two arrays of numbers
- return a new array containing
- product of the all the pairs that can be formed from the elements from both arrrays
- the returned array should be sorted in ascending order
- neither argument is empty
- only integer array

**Implicit Requirements/Rules/Boundaries**
- The results could be repeated in the result array
- the order of the pairs does not matter


**Special Terms**
-


**Examples/Test Cases**
- input: [2, 4], [4, 3, 1, 2]
- Output: [2, 4, 4, 6, 8, 8, 12, 16]

[2,4], [2,3], [2, 1], [2,2], [4,4], [4,3], [4, 1], [4, 2]

[8, 6, 2, 4, 16, 12, 4, 8]
[2, 4, 4, 6, 8, 8, 12, 16]


**Questions**
-


**Data Structures**
- input: arrays
- Output: array
- Intermediate:
- Storage: array

--------------- A:- 8 MIN to 15 MIN------------

**Algorithm**
- given two arrays
- init results array []
- For each number in the first array
  - For each number in the second array
    find the product of current first array number and current second array number
    save the product in the results array
- return the results array



**Implementation details**
-


-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent****
=end

def multiply_all_pairs(array_1, array_2)
  results = []

  array_1.each do |num_1|
    array_2.each do |num_2|
      results << (num_1 * num_2)
    end
  end

  results.sort
end

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |nums| nums[0] * nums[-1] }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
