=begin
Given an Array of Integers, return all pairs of integers that have a difference of 2.
The result array should be sorted in ascending order of values.
Assume there are no duplicate integers in the array.
The order of the integers in the input array should not matter.


problem: 
Aim:return pairs of int that have a diff of 2
-input: 1d arr
-output: 2d arr ( a nested arr)

rules 
 - sorted in ascending order of values
 - no duplicates
 - incoming can be in any order
 Implicit rule 
  - do not have to mutate the original
  - diff of 2: num2 - num 1 = 2
  - dont duplicate backwards [3,1] [4,2] 
  - output should put my values in order
  - input will be in any order
  - a number can show up two times just not the same pair

Examples
Test Cases:
  p difference_of_two([1, 2, 3, 4]) ==  [[1, 3], [2, 4]] # happy 
  p difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
  p difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]] #exceptions - 3 shows up 2 times in my results, 
Algorithm
  - sort the incoming array so that i know all values are in order
  - initialize an empty results array
  - iterate through the array finding values that give a difference of two
   - use each with index 2 times ( one for an inner loop and one for an outer loop )
    - guard clause : index 2 <= index 1
  
  - push those values into an array
    - results << [val1, val2]
  - return the results array
C
=end

def difference_of_two(incoming)
  results = []
  sorted = incoming.sort
  sorted.each_with_index do |val1, idx1|
    sorted.each_with_index do |val2, idx2|
      next if idx2 <= idx1
      results << [val1, val2] if val2 - val1 == 2
    end
  end
  results
end

p difference_of_two([1, 2, 3, 4]) ==  [[1, 3], [2, 4]] # happy 
p difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]

# Learning - Exposure - processing 
  # - 
# Practice - Problem - Applying or breaking down meanings further
 # - if you cant solve it in ..mins then look at the answer, try to figure out what they did
# Teaching - Mastery - Sharing content with others   ve  vv4v 