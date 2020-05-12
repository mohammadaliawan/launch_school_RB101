# ask the user for two numbers
# ask the user the type of operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts("Welcome to the Calculator!")

Kernel.puts("What is the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What is the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("What operation do you want to perform? 1) add, 2) subtract, 3) multiply, 4) divide")
operator = Kernel.gets().chomp()

result = if operator == '1'
           number1.to_i() + number2.to_i()
         elsif operator == '2'
           number1.to_i() - number2.to_i()
         elsif operator == '3'
           number1.to_i() * number2.to_i()
         else
           number1.to_f() / number2.to_f()
         end

Kernel.puts("The result is #{result}")