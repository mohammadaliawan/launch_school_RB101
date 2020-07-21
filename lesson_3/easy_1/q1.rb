numbers = [1, 2, 2, 3]

numbers.uniq # [1.2,3]

puts numbers.inspect # [1, 2, 2, 3]

=begin
Array#uniq method is a non mutating method that
returns a new array by removing duplicates from the calling array.

So line number 3 returns a new array but that array is not assigned
to any variables so it is not stored.

Line number 5 outputs the original array since the numbers was not mutated.
=end