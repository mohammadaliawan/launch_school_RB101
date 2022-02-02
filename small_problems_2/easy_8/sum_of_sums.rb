=begin

Write a method that takes an Array of numbers and then returns the
sum of the sums of each leading subsequence for that Array.
You may assume that the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of numbers
**Output** : sum of the sum of leading subsequences

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of nums as argument
- returns the sum of the sums of each leading subsequence for that Array
- subsequence : a sequence of consecutive elements of the array
- leading: starting from the first element
- sum of each leading subsequnce: sum of a sequence of consecutive elements of the array starting from the first one
- sum of the above sums
- array will contain atleast one number

**Implicit Requirements/Rules/Boundaries**
- if only one integer in the array return that integer



**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**

- input: [3, 5, 2]
- Output: (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
[3], [3, 5], [3,5,2]
[3, 8, 10]
21


**Questions**
-


**Data Structures**
- input: array
- Output: number /integer
- Intermediate: array of arrays
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of nums
- find all the leading subsequences of the array
  - init an empty array lead_subs = []
    For end index from 1 to size - 1
    - save array[0, end_indx] lead_subs
- find the sum of all the leading subsequences

- find the sum of the sums
-   make a one dimensional array of lead_subs
- sum all the elements of lead_subs


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def find_leading_subs(ary)
  lead_subs = []

  0.upto(ary.size - 1) do |end_idx|
    lead_subs << ary[0..end_idx]
  end
  lead_subs
end

def sum_of_sums(ary)
  lead_subs = find_leading_subs(ary)

  lead_subs.flatten.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35


