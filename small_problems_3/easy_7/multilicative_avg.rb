=begin

Write a method that takes an Array of integers as input,
multiplies all the numbers together, divides the result by
the number of entries in the Array, and then prints the result
rounded to 3 decimal places. Assume the array is non-empty.

Examples:

Copy Code
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of integers
**Output** : floating point number -> muliplicative avg of the numbers i the array

**Explicit Requirements/Rules/Boundaries**
- given an array of integers
- multiply all the numbres
- divide by the size of the arrat
- round the result to 3 decimal numbers

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
- input: [3, 5]
- Output:


**Questions**
- how to convert to 3 decimal places?



**Data Structures**
- input: array of integers
- Output: string
- Intermediate: floating point
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given an array of integers
- multply all the numbers #result
- find the size of the array
- divide the result by size
- format the floating point to a string number with 3 decimal places




**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def show_multiplicative_average(nums_array)
  result = nums_array.reduce(:*)

  size = nums_array.size.to_f

  avg = result / size

  formatted_avg = format('%.3f', avg)
  p formatted_avg
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


