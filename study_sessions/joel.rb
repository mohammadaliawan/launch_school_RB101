

=begin

Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

TEST:
    p delete_digit(152) == 52
    p delete_digit(1001) == 101
    p delete_digit(10) == 1

----- PED:- 0 MIN to 12 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**
- given an integer n
- return the maximal number obtained by deleting exatly one digit from the given number
- 10 ≤ n ≤ 1000000

**Implicit Requirements/Rules/Boundaries**
- The resulting number should have the same order of the digits as in the given number


**Special Terms**
-


**Examples/Test Cases**
- input: 1001
- Output: 101
"1001" -> [001, 101, 101, 100] -> [1, 101, 101, 100] -> 101

- 152 -> "152" -> [52, 12, 15] -> [52, 12, 15] -> 52
- 152 -> [1,5,2] -> [5,2] -> 52
[52, 12,  15]

**Questions**
- maximal: maximum posssible number


**Data Structures**
- input: integer
- Output: integer
- Intermediate: string
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- find all the digits in the given integer # digits
- initialize possible_numbers array to an empty array to store the possible numbers
loop from index 0 to size -1
  - create a copy of the digits array
  - from the copy delete the digits at current_index
  - convert the resulting_array to a string and then to an integer
  - save the resulting integer to the possible_numbers array
  - return the maximum number in possible_numbers



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end
def delete_digit(number)
  digits = number.digits.reverse

  possible_nums = []

  index = 0

  loop do
    digits_clone = digits.dup

    digits_clone.delete_at(index)

    possible_number = digits_clone.join.to_i

    possible_nums << possible_number

    index += 1

    break if index > (digits.size - 1)
  end
  possible_nums.max
end


p delete_digit(152) #== 52
p delete_digit(1001) #== 101
p delete_digit(10) #== 1