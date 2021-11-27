=begin
You have to create a method that takes a positive integer number and returns the next bigger number
formed by the same digits.

12 => 21
513 => 531
2017 => 2071
If no bigger number can be composed using those digits, return -1:

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

45 => 54
43 => -1
57 => 75
98 -> -1
513 => 531
543 => -1
573 -> 735


** Problem Requirements **

Input: positive integer
Output/return: positive integer or -1

**Restate**
- given a positive integer
- return the next bigger number formed by the same digits

**Rules / Boundaries (Check test cases)**

**Explicit**
- inputs shall be only positive integers
- outputs shall be only positive integers or -1
- return the next bigger integer formed by same digits as the input integer

**Implicit**
- return - 1 if no bigger number can be formed using the same digits.
- if input is a single digit number then return -1

** Terms **

**Questions**


** Data Structures**

- input:
- Output:
- Intermediate:
- Storage:


**Algorithm**


** Implementation details **

=end




p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798