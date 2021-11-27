=begin
Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

=begin

**Problem Requirements**
- Input: none
- Output/return: string representation of odd numbers from 1 to 99

**Rules / Boundaries (Check test cases)**

**Explicit**
- print all odd numbers from 1 to 99
- 1 and 99 inclusive
- to the console
- each number on seperate line

**Implicit**
-

**Special Terms**
- odd: not divisble by two -> remainder is not zero

**Questions**
-

**Data Structures**
- input: none
- Output: string
- Intermediate:
- Storage:

**Algorithm**
- iterate from 1 to 99
  - if current number is odd print it


**Implementation details**
-

=end

# 1.upto(99){|num| puts num if num.odd?}

# 99.times{|num| puts(num + 1) if (num + 1).odd?}

num = 1

# loop do
#   puts num if num.odd?

#   num += 1
#   break if num > 99
# end

# while num <= 99
#   puts num if num.odd?
#   num += 1
# end

# (1..99).each do |num|
#   puts num if num.odd?
# end

# puts (1..99).select {|num| num.odd?}

puts (1..99).select {|num| num.even?}