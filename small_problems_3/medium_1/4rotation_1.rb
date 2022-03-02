=begin
Write a method that rotates an array by moving the first element to the end of the array.
The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of numbers
**Output** : array of numbers

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of numbers as argument
- returns a new array with first element moved to the end of the array
- rest of the elements moved up by 1 index
- donot mutate the original array
- 


**Implicit Requirements/Rules/Boundaries**
- a single element array -> return a new array with that single element


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: [7, 3, 5, 2, 9, 1]
- Output: [3, 5, 2, 9, 1, 7]

duplicate: [7, 3, 5, 2, 9, 1] -> [3,5,2,9,1] -> [3,5,2,9,1,7]


**Questions**
-


**Data Structures**
- input: array
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of numbers
- Make a duplicate of the given array
- remove and save the first element from the copy
- append the saved element to the copy
- return the copy

Solution_2:
- Given an array
- extract a subarray of the given array from the index 1 to last index
- append the first element of the given array to the subarray
- return the new array

**Implementation details**
- 

**Further Exploration**

Write a method that rotates a string instead of an array. 
Do the same thing for integers. You may use rotate_array from inside your new method.

input: string
output: new string

requrements:
- write a method
- takes a string/integer as argument
- conver the string/integer to a string
- return a new string/ number with 
- moves the first char/digit to the end of the string/number
- donot mutate the given string
- rest of the chars moved up by 1 index
- single char string/number remains as it is

Examples:
input: "Hello World"
Output: "ello WorldH"

- conver the integer to a string
- convert the string to an array of chars
subprocess - rotate array
- extract a subarray from index 1 to last index
- append the first char to the substring 
- return the new array

- join the elements of the rotated array to a string
- return the string

- conver the string to an integer
- return the new number


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def rotate_string(words)
  rotate_array(words.chars).join('')
end

def rotate_number(number)
  rotate_string(number.to_s).to_i
end

def rotate_array(array)
  array[1..-1] << array[0]
end


# def rotate_array(numbers)
#   numbers_copy = numbers.dup

#   first_element = numbers_copy.shift

#   numbers_copy << first_element

#   numbers_copy

#   numbers
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# p rotate_string("Hello World") == "ello WorldH"
# p rotate_number(1234) == 2341