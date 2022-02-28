=begin

Write a method that returns an Array that contains every other element of an Array that is
passed in as an argument. The values in the returned list should be those values that are in
the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- define a method
- takes an array as an argu
- returns an array containing every other element of the argu array
= returned elements should be the 1st, 3rd, 5th..

**Implicit**
- elements returned will have even indices

**Special Terms**
-

**Questions**
-

- Input: array
- return: array of even index elements

**Data Structures**
- input: array
- Output: array
- Intermediate:
- Storage:

**Algorithm**
- given an array
- create an empty selected_elements list to store the selected elements
- For each element of the given array
  - select those elements whose index is even

**Implementation details**
- init empty array selected_ele
- Iterate thru the given array with index #each_with_index
  - if the index is even # even?
      - store the current element in the selected_ele array # array <<
- return the selected_eles array
=end

def oddities(ary)
  ary.select.with_index do |ele, index|
    index.odd?
  end
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
