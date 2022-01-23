
```ruby
def remove_vowels(str)
  str.map do |word|
    word.gsub(/[aeiou, AEIOU]/,'')
  end
end
```

=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

You may assume that the argument is always greater than or equal to 2.

Examples:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847


------ PED:- 0 MIN to 12 MIN --------------


**Input** :integer, specifying the number of digits
**Output** : integer >= 2, specifying the index of the first fibonacci number with given number of digits

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an integer
- specifying the number of digits
- returns the index of the first fibonacci number that ha given number of diits
- first fibonacci number has index 1
- argument will always be greater than or equal to 2



**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
- fibonacci number : a number in the fibonacci series
- first two numbers are 1
- subsequent numbers are sum o the previous two numbers


**Examples/Test Cases**
- input: 2
- Output: 7
[1,1,2,3,5,8,13,21,]


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Generate subequent fibonacci numbers and store them in an array
- when the number of digits of the last generated number in the series reaches the given number stop generateing more numbers
- return the size of the array



**Implementation details**
- Generate subequent fibonacci numbers and store them in an array
  - inititalize fibnacci_series = [1,1]
  - next_number = fibonacci_series.last + fibonacci_series[-2]
  - store the number in the array
- while number of digits pf the last number generated < given number
  - generate the next number
- return the array size after the above loop exits


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def ind_fibonacci_index_by_lengt(num_of_digits)
  fibonacci_series = [1,1]

  while fibonacci_series.last.digits.size < num_of_digits
    next_num = fibonacci_series.last + fibonacci_series[-2]

    fibonacci_series << next_num
  end

end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847