def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
On line 1 we define a method `tricky_method` that takes two arguments `a_string_param` and 
`an_array_param`
Inside the method definition we reassign `a_string_param` to `a_string_param + "rutabaga"`
This reassigns a_string_param to a new string object.
Then on line 3 we incoke the Array#<< method on the local variable 'an_array_param`` and pass string object
"rutabaga" . This appends the string object "rutabaga" to the array an-array_param

On line 6 we initialize a local variable `my_string` and assign the string object with value "pumpkins" to it.
Then On line 7 we initailize the local variable my_array and assign the array object with value ["pumpkins"] to it.
On line 8 we call the tricky_method and pass in two arguments to it my_string and my_array

The method tricky_method first reassign a_string_param which is a variable local to the 
tricky_method to a_string_param + "rutabaga" which returns a new string object "pumpkinsrutabaga"
So now a_string_param points to a completely new string object.

The we invoke the Array#<< method on an_array_param and pass in the string object "rutabaga"
This method appends the string object "rutabaga" to an_array_param and return the same now mutated array.

At this point a_string param points to the string object with value "pumpkinsrutabaga"
and an_array_param points to the same array as before except now its mutated to 
["pumpkis", "rutabaga"]

The method return this same array as `an_array_param << "rutabaga" is the last line executed in the method

The first puts method call ouputs "My string looks like this now"