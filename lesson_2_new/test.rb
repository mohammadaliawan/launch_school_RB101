require "pry"

def a_method(num1, num2, num3)
  binding.pry
  num1 + num2 + num3
end

number1 = 1

number2 = 2

number3 = 3

p a_method(number1, number2, number3)