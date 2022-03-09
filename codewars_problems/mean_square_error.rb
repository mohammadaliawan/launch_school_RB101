# Complete the function that

# accepts two integer arrays of equal length
# compares the value of each member in one array to the corresponding member in the other
# squares the absolute value difference between those two values
# and returns the average of those squared absolute value difference between each member pair.
# Examples
# [1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
# [10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
# [-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

# p solution([1, 2, 3], [4, 5, 6]) == 9
# p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
# p solution([-1, 0], [0, -1]) == 1

=begin

------ PE:- 0 MIN to 5 MIN --------------


**Input** : two array of integer of equal length
**Output** : integer or float, avg of the squared absolute value difference betweeen corresponding elment sin the arrays

**Explicit Requirements/Rules/Boundaries**
-  accepts two integer arrays of equal length
- # compares the value of each member in one array to the corresponding member in the other
-  squares the absolute value difference between those two values
returns the average of those squared absolute value difference between each member pair.

**Implicit Requirements/Rules/Boundaries**
- if the avg is a floating point number return floating point number
- otherwise return an integer


**Special Terms**
-


**Examples/Test Cases**



**Questions**
-


--------------- DA:- 6 MIN to 15 MIN------------

**Data Structures**
- input: arrays
- Output: integer
- Intermediate:
- Storage:


**High Level Algorithm**
- Given two arrays of equal length
- init a new array #squares
- For each element in first array
  - find the absolute value of the difference between current element in first array and corresponding element in second array
  - square the result
  - append to the squares array
- fidn the average
  - sum the squares array elements #sum
  - dvide by the size of squares array
- return avg


**Implementation details**
-


-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent**
=end

def solution(ary_1, ary_2)
  squares = []
  
  ary_1.each_with_index do |first_num, idx|
    current_square = (first_num - ary_2[idx]).abs.**(2)
    squares << current_square
  end
  squares.sum.to_f / squares.size
  
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
