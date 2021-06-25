# get the first number from the user
# get the second number from the user
# get the operation to be performed from the user
# perform the operation
# display result


Kernel.puts("Welcome to the Calculator!")

Kernel.puts("Enter the first number:")
number_1 = Kernel.gets().chomp()

Kernel.puts("Enter the second number:")
number_2 = Kernel.gets().chomp()

Kernel.puts("Enter the Operation you want to be perform: 1) Add, 2) Subtract, 3) Multiply, 4) Divide")
operation = Kernel.gets().chomp()

if operation == '1'
  Kernel.puts("The result is #{number_1.to_i() + number_2.to_i()}")
elsif operation == '2'
 Kernel.puts("The result is #{number_1.to_i() - number_2.to_i()}")
elsif operation == '3'
  Kernel.puts("The result is #{number_1.to_i() * number_2.to_i()}")
else
  Kernel.puts("The result is #{number_1.to_f() / number_2.to_f()}")
end