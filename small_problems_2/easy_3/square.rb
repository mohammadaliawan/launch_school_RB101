=begin
Using the multiply method from the "Multiplying Two Numbers" problem,
write a method that computes the square of its argument
 (the square is the result of multiplying a number by itself).

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
-

**Implicit**
-

**Special Terms**
-

**Questions**
-

- Input:
- Output/return:

**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

**Algorithm**
-

**Implementation details**
-

=end

def multiply(n1, n2)
  n1 * n2
end

def power_to_n(num, power)
  result = num
  while power >= 2
    result = multiply(result, num)
    power -= 1
  end
  result
end
p power_to_n(5,0) #== 125
p power_to_n(-8,4) #== -512