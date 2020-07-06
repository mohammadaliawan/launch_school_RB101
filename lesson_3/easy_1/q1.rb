numbers = [1,2,2,3]
numbers.uniq

p numbers # => [1, 2, 2, 3]

# First we assigned an array of numbers
# to the local variable numbers
# Then we invoke the Array#uniq method
# The Array#uniq method is non mutating
# it returns a new array object which is a copy
# of the original array object with the duplicate
# values removed.
# So numbers array is not modified. `puts numbers` displays the
# the original array.
