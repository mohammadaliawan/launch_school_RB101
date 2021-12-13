# You are going to be given an array of integers.
#Your job is to take that array and find an index N where the sum of the integers to the left of N
#is equal to the sum of the integers to the right of N. If there is no index that would make this happen,
#return -1.


# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6
# p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3


INPUT - an array of integers
OUTPUT - an integer (represents an index)
REQUIREMENTS/QUESTIONS
- integrrs can be pos or neg
- have to find the place where left side is equal to right side
  - the current index doesn't count toward left or right side
  - have to find the index where both sides are equal or return -1
- what if two indices have left and right as equal? just return first?
- at index 0 left side is 0, at last index right side is 0

EXAMPLES/EDGE CASES
- negaitive numbers, shouldn't affect summing
- no empty arrays, only integers


DATA STRUCTURES
- an array

ALGORITHM
- create a method that takes an array as an argument
- have to iterate over that array
  - on each iteration have to do a comparison between elements to the left and eleements to the right
    - the comparison is the sum of left and sum of right
    - if they are equal return that index
    - if not continue checking
    - if arrive at end and none are equal return -1
- have to calculate left side and calcualte right side
  - TESTED - sum of empty array is 0
  - left side
  - have to find the section of the array given the current index
  - so all parts of the array up to but not including that inded
  - so from 0 but not including that index
  - find the sum of this section
  - right side
  - have to find the section of the array given the current index
  - so from the index + 1 (not include index) all the way to the SIZE of the array
  - find the sum
- comparison can be done with these helper methods


- iterate over the array
  - calculate sum of left side
       - how to do this?
  - calculate sum of right side
  - compare and return idx if it is equal
=end

def calc_left_side(arr, idx)
  arr.slice(0...idx).sum
end

def calc_right_side(arr, idx)
  arr.slice(idx + 1...arr.size).sum
end

def find_even_index(arr)
  arr.each_with_index do |num, idx|
    return idx if calc_left_side(arr, idx) == calc_right_side(arr, idx)
  end
  -1
end



p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3