=begin
Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

Example:

square(5) == 25
square(-8) == 64

input: one argument- integer, positive, negative
Output: the square of the argument

Rules:
- Ouput the square of the argument
- String?
- Array?
- Hash?



=end

def multiply(n1, n2)
  n1 * n2 # square
end

def power_to_n(num,n)
  result = 1
  if n.even? 
    (n/2).times do |i|
   result *= multiply(num, num)
    end
    return result if n >= 0
    1.0 / result if n < 0
  else
    (n/2).times do |i|
     result *= multiply(num, num)
    end
    return result * num if n >= 0
    (1.0 / (result * num)) if n < 0
  end
end

p power_to_n(2,0) # == 1
p power_to_n(2,2) # == 4
p power_to_n(2,3) # == 8
p power_to_n(2,-2) # == 0.25
p power_to_n(2,-3) # == 0.125

1/num * 1/num