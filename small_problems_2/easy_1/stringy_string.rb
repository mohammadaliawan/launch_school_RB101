=begin
Write a method that takes one argument, a positive integer, and
returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin

** Problem Requirements **

Input: a positive integer
return: a string of alternating 1 and 0

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes one argu
- a +tive integer
- return a string
- of alternating 1s and 0s
- always start with 1
- lenght of the returned string should mathc the given integer


**Implicit**

** Terms **

**Questions**
- input will be > 0


** Data Structures**

- input: integer
- Output: string
- Intermediate: array
- Storage:


**Algorithm**

- given a positive integer
- create a new empty array to store the result
- For each number from 0 to num - 1
  - if num is even append a 1
  - otherwise append a 0
- join the array elements



** Implementation details **

=end

def stringy(int, start = 1)
  result = []

  int.times do |index|
    if start == 1 && index.even?
      result << 1
    elsif start == 1 && index.odd?
      result << 0
    elsif index.even?
      result << 0
    else
      result << 1
    end
  end

  result.join
end

puts stringy(6, 1) #== '101010'
puts stringy(9, 0) #== '101010101'
puts stringy(4, 0) #== '1010'
puts stringy(7, 0) #== '1010101'