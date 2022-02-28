=begin
Write a program that solicits 6 numbers from the user, then
prints a message that describes whether or
not the 6th number appears amongst the first 5 numbers.

=begin

**Problem Requirements**
- Input: 6 integers
- Output/return: print "The #{sixth_num} appears or does not appear in the #{first_five_nums}."

**Rules / Boundaries (Check test cases)**

**Explicit**
- retrieve 6 numbers from the user - Integers
- print message describing if sixth number appears in the first five inputs

**Implicit**
- Validate input : valid_integers?

**Special Terms**
-

**Questions**
- Input: Integer or Float? (Integers)
- input validation required: yes

**Data Structures**
- input: integers
- Output: string
- Intermediate: array to store the input numbers
- Storage:

**Algorithm**
- Retrieve 6 number from the user
  - validate each input
- Check if 6th number appears in the first five
- Output the result

**Implementation details**
- nums_ary-
print "==> Enter 1st/2nd..last number "
- num = gets.chomp
- nums_ary.push(num)

- if num_ary.include?(sixth_num)
  - print  "The #{sixth_num} appears in the #{nums_ary}."
- else
  - print The #{sixth_num} does not appear in the #{nums_ary}."

=end


