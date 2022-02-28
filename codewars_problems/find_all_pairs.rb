=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0


------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of integer
**Output** : integer, the number of pairs in the array

**Explicit Requirements/Rules/Boundaries**
- write a method that takes an array of integers
- find the number of pairs
- return the number of pairs
- [] or [one value]; in this case return 0
- If there are more pairs of a certain number, count each pair only once. 
- if a number has been counted towards a pair it cant be reused to form a pair with another element
- maximum array length is 1000, range of values in array is between 0 and 1000


**Implicit Requirements/Rules/Boundaries**
- negative numbers count as different from their respective postive numbers


**Special Terms**
- pairs: two elements of an array that are equal in value


**Examples/Test Cases**
pairs([1, 2, 5, 6, 5, 2]) == 2

[1, 5, 6, 5] -> [[2,2], [5, 5]] -> 2

pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4

[1] -> [[2,2], [20, 20], [6,6], [2,2]] -> 4

**Questions**
-


**Data Structures**
pairs([1, 2, 5, 6, 5, 2]) == 2
count(1) = 1
count(2) = 2 /2 = 1
count(5) = 2/ 2 = 1

[1, 2, 2, 20, 6, 20, 2, 6, 2] -> delete duplicates -> [1,2,20,6]
count(1) = 1
count(2) = 4 / 2 = 2
count(20) = 2 /2 = 

- input: array of integers
- Output: integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**

iterate through array
count the number of occurences of each element in the array
divide by two to get the number of pairs
increment a pair counter by number of pais




**Implementation details**\
- Given an array of integers
- make a new array by deleting duplicates from the array # unique_nums
- init a pair_counter to 0
- iterate through unique_nums
  - count the occurences of each integer in the given array # current_counter
  - divide current counter by 2 to get the number of pairs #number_pairs
  - increment pair_counter by number_pairs
- return pair counter


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def pairs(numbers)
  unique_nums = numbers.uniq

  pair_counter = 0
  unique_nums.each do |num|
    current_count = numbers.count(num)
    number_of_pairs = current_count / 2
    pair_counter += number_of_pairs
  end

  pair_counter
end

p pairs([1, 2, 5, 6, 5, 2]) #== 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) #== 4
p pairs([0, 0, 0, 0, 0, 0, 0]) #== 3 
p pairs([1000, 1000]) #== 1
p pairs([]) #== 0
p pairs([54]) #== 0
