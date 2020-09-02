# What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # 2 is a truthy value because anything in Ruby other than FALSE or NIL is truthy

new_array = arr.select do |n| 
  n + 1
end

p new_array

1. what does this code output
2. What concept does this demonstarte

# On line 3 we init a new local variable arr and assign it to an array object  of integers t to 10
# on line 5 invoke the Array#select method on the arr and pass in a block
# inside the block passed tp the select method we increment each number by 1
# The return value of the block for each iteration is stored into a new array which is returned by the slect method and then assigned to the local variable new_array

# then on line 9 we invoke the Kernel#p method and pass it the new_array variable as the argument
# this would then print the new_arrray as [2,3,4,5,6,7,8,9,10,11]

- On `line 3` local variable `arr` is initialized and assigned to an `Array` object with integer values from `1` to `10`.
  
- On `line 5` local variable `new_array` is initialized and assigned the return value of calling 'select' on the Local variable `arr`. 'Select' is passed the `do...end` block as an argument with block parameter 'n'. 

On `line 6`, the `+` method is called on local variable `n` and passed integer `1` as an argument. As `select` iterates over the array, it passes each element to the block parameter `n`. The code on `line 6` will increment `n` by `1`. 
  
On line 9, the print method is called and passed the new_array variable as an argument.  It will return an array object `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`

This problem demonstrates the concept of truthiness and that select will return a new array of elements based on the truthiness of the block's return value. 
This problem demonstrates the concept of truthiness and that select will return a new array of elements based on the truthiness of the block's return value. 