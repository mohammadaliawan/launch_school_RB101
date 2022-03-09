=begin
You've just discovered a square (NxN) field and you notice a warning sign. The sign states that 
there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns the location of the mine.
The mine is represented as the integer 1 in the 2D array.
Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the first element is the row index, 
and the second element is the column index of the bomb location (both should be 0 based). 
All 2D arrays passed into your function will be square (NxN), and there will only be one mine in the array.

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

------ PED:- 0 MIN to 12 MIN --------------


**Input** : 2D array
**Output** :array [rowindex, column index]

**Explicit Requirements/Rules/Boundaries**
- write a function that takes a 2D array
- returns the location of the mine in the form [rowindex, column index]
- mine is integer 1
- non mine is integer 0
- location of the integer 1 should be returned as an array [row, column]
- all inputs will be square arrays - number of elements in the inner array == the numbr of elements in the outer array
- only one mine in the array


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]


**Questions**
-


**Data Structures**
- input: array of arrays
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- iterate over the outer array elements and index
  - iterate over the inner array elements and index
    - if curent_element == 1
      return [outer_index, inner_index]



**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def mineLocation(array_2d)
  array_2d.each_with_index do |inner_array, outer_idx|
    inner_array.each_with_index do |number, inner_idx|
      return [outer_idx, inner_idx] if number == 1 
    end
  end
end

p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
