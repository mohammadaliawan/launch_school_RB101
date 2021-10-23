riaz_notes.md

Notes for assessment - RB109 written
Description
Initialization
​ On line 1 the local variable a is initialized to the String object "Hello".

​ On line 1 the local variable xx is initialized to the Integer object xx

​ On line xx the local variable xxx is initialized to the Float object x.xx

​ On line xx the local variable xxx is initialized to the Array object [xxxxxx]

Array#each
​ On line xxx the local variable xxxx is initialized to the Array object [xxxxx]. On line 3 the each method is invoked on the object referenced by the local variable xxx. The block is defined by the do..end keyword along side the each method invocation. Array#each method iterates over the array object it is called on and executes the block for each element in the array. The Array#eachmethod returns the original array object it was called upon. The return value of the block does not influence the return value of the #each method.

For every iteration the each method passes the current element as an argument to the block which is assigned to the block parameter xxxxxx.

Array#map
​ On line xxx the local variable xxxxx is initialized to the Array object [xxxxxx]. On line xxx the map method is invoked on the object referenced by the local variable xxxx.The block is defined by the do..end keyword along side the map method invocation. Array#map method iterates over the array object it is called on and executes the block for each element in the array. The map method returns a new array with elements transformed based on the return value of the block.

For every iteration the map method passes the current element as an argument to the block which is assigned to the block parameter xxxxxx.

The map method iterates through the collections and returns a new collection transformed based on the return value of the block.

Array#select
​ On line xxx the local variable xxxxx is initialized to the Array object [xxxxxx]. On line 3 the select method is invoked on the object referenced by the local variable xxxx. The block is defined by the do..end keyword along side the select method invocation. Array#select method iterates over the array and executes the block for each element in the array. The Array#select method returns a new array with the selected elements based on the truthiness of the return value of the block. If the return value of the block is truthy then the current element is selected. If the return value of the block evaluates to false then the current element is not selected.

For every iteration the select method passes the current element as an argument to the block which is assigned to the block parameter xxxxxx.

The select method iterates through the collections and returns a new collection based on the truthiness of the return value of the block.

Hash#select
On line xxx the local variable xxxxx is initialized to the Hash object {xxxxxxx}

The select method takes a block which is passed to it as an argument. The block is defined by the do..end keywords associated with the select method invocation. The select method iterates over the collection and passes each key-value pair as arguments to the block where they are assigned to the block parameters xxxxxx and xxxxxx. For every iteration the select method executes the block and selects the key-value pair if the return value of the block evaluates to true. If the block returns a falsey value then the key-value pair is not selected. The selected pairs are returned in a new hash.

The select method iterates through the collections and returns a new collection based on the truthiness of the return value of the block.

Kernel#puts
On line x the Kernel#puts method is called and the object referenced by the local variable x is passed as an argument to it.
On line xx the Kernel#puts method is called and the object referenced by the local variable yy is passed as an argument to it. This will output the string representation of the Integer object 123 and return nil.
On line xx the Kernel#puts method is called and the object referenced by the local variable yy is passed as an argument to it. This will output the String object xxxx and return nil.
Kernel#p
On line xxx the p method is invoked and the object referenced by the local variable xxxxx is passed as an argument. This will output xxxx and return xxxxx

String#[]=
On line xxx the index reassignment String#[]= method is called on the object referenced by xxxx and an argument Integer xx is passed to it. This is a destructive method and it mutates the object to 'something'.

String#<<
On line 2 the destructive method String#<< is called on the object referenced by xxxxx which mutates the object referenced by xxxx and xxxxx to 'xxxxxxxxx'.

any?
The any? method iterates over the collection it is called upon and passes the current element as arguments to the block defined by the do..end keyword alongside the any? method invocation. Within the block the current element is assigned to the block parameter . The any? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for any of the element in the collection then the any? method will return true

all?
The all? method iterates over the collection it is called upon and passes the current element as arguments to the block defined by the do..end keyword alongside the all? method invocation. Within the block the current element is assigned to the block parameter . The all? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for all of the elements in the collection then the all? method will return true. If the block returns a falsey value for any of the elements then all? will return false

Enumerable#each_with_object
-- code example

[1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end
# => [1, 3]
The each_with_object takes a method argument which is a collection object and a block defined by do..end keywords alongside the each_with_object method invocation. The method iterates over the collection upon which it is called and for every iteration the current element in the collection is passed as an argument to the block and assigned to the first method parameter xxxxx and the method argument is also passed as an argument to the block and is assigned to the second method parameter xxxxx. After iterating, the method invocation returns the collection object that was passed in as the method argument.

When the each_with_object is invoked on a hash the first block parameter is converted into an array. A parantheses can also be used to capture the key and value from a key-value pair seperately

each_with_index
The each_with_index method is called on the array xxxxx. The do..end keyword alongside the each_with_index? method invocation defines the block. For each iteration the current element and its index are passed as an arguments to the block and assigned to the block parameters xxxx and xxxx respectively. In line xxxx xxxxx and xxxxx are input into the string object through String Interpolation. This interpolated string is then passed as an argument to the puts method invocation which outputs the string for each iteration. The each_with_index method ignores the return value of the block and returns the calling collection object xxxxx.

partition
The partition method iterates over the array it is called upon and returns a nested array divided by the return value of the block.

Variable scoping rules
method invocation with a block
​ The do..end following the xxxx method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Kernel#loop
On line 3 the loop method is invoked and the do..end following the loop method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

​ This example demonstrates the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Variables as pointers
This example demonstrates the concept of variables as pointers . That is variables in Ruby acts as reference to objects in memory space.

Though they hold the same value. They are pointing to different objects in memory space

Method definition - Object passing ***
def somemethod(a)
  puts a
end

some_method(5)
On line 5 the some_method method is invoked and the Integer object 5 is passed as an argument to it. In the method definition the method parameter a is assigned to the Integer object 5 and thus made available to the method body as a local variable.

On line 5 the some_method method is invoked and the String object xxxxx is passed as an argument to it. In the method definition the method parameter xxxxxx is assigned to the String object xxxx and thus made available to the method body as a local variable. Now xx points to xxxxx in memory space.

Methods definitions are self contained and have their own scope. Locals variables initialized in the outer scope of the method definition are not accessible within the innerscope unless they are passed in explicitly as arguments. The local variables initialized in the inner scope of the method definition are not accessible outside of the method definition.

Object passing strategy
This example demonstrates Object passing strategy in Ruby. Here the Object is being appears to be passed as a value since the original object is not mutated.

This example demonstrates Object passing strategy in Ruby. Here the Object is being appears to be passed as a reference since the original object is mutated.

Here the example demonstrates the concept of mutability of objects using a destructive method call. When an operator within the method mutates the caller, it will modify the original object.

Variable shadowing
​ Variable shadowing occurs when both the block parameter and the local variable defined in the outer scope have the same name. When this happens the block, which is passed as an argument to the method invocation, hides the local variable that was defined outside of the block. This can be overcome by assigning different names

Implict return
​ In Ruby methods will implicity return the result of the last evaluated expression unless the return keyword is used explicitly used before this. Therefore xxxxxx will return "xxxxxx" since this is the last evaluated expression.

Collections
Array
Array is a collection of ordered list of elements. Array uses Integer based index starting from 0 to maintain the order of the elements. Specific elements can be referenced using the index.

Hashes
Collections of elements in key / value pair association.

Other Concepts
String Interpolation
String interpolation is used to input an object into another String object.

Inside the Block string interpolation is used to input the string representation of each element to the String object.

During each iteration the string uses the string interpolation to add the local variable xxxxxx to the String Object.

Dup and Clone
Dup
The dup method when called on an object creates a shallow copy of the object. If the object contains other objects then they will be shared and not copied. The dup method does not preserve the frozen state of the object.

Clone
The clone method when called on an object creates a shallow copy of the object. If the object contains other objects then they will be shared and not copied. The clone method preserves the frozen state of the object.

Examples
Variables as pointers
Example 1
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = “Hello”
b = a
a = “Goodbye”
puts a
puts b
This example will output "Goodbye" and "Hello" in separate lines.

In line 1 the local variable a is initialized to the string object "Hello". In line 2 the local variable b is initialized to point to the same object as a

In line 3 a is reassigned to another string object "Goodbye". Now a and b point to different object in memory space. In the line 4 the puts method is called and the object referenced by the local variable a is passed as an argument to it. This will output "Goodbye" and return nil. In the line 5 the puts method is called and the object referenced by the local variable b is passed as an argument to it. This will output "Hello" and return nil.

This example demonstrates the concept that local variables in Ruby acts as pointers to an object in memory space.

Example 2
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4

loop do
  a = 5
  b = 3
  break
end

puts a
puts b
​ In line 1 the local variable a is initialized to the Integer object 4. In line 3 the loop method is invoked and the do..end following the loop method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

​ In line 4 the local variable a is reassigned to the Integer 5. In line 4 the local variable b is initialized to the Integer object 3. break keyword breaks out of the loop. In the line 9 the Kernel#puts method is called and the object referenced by the local variable a is passed as an argument to it. This will outut the string representation of the Integer object 5 and return nil. In the line 10 the Kernel#puts method is called and the object referenced by the local variable b is passed as an argument to it. This will outut the string representation of the Integer object 3 and return nil.

This example demonstrates the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Example 3
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

loop do
  c = 3
  a = c
  break
end

puts a
puts b
The last line of the code will return nil . This program will output 3 and 2 on separate lines.

In line 1 the local variable a is initialized to the Integer object 4. In line 1 the local variable b is initialized to the Integer object 2. In line 4 the loop method is invoked and the do..end following the loop method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Within the block in line 5 the local variable c is initialized to the Integer object 3. In line 6 a is reassigned to the Integer object 3 . This is the same object that c points to. We break out of the loop. In line 10 the Kernel#puts method is called and the object referenced by the local variable a is passed as an argument to it. This will output the string representation of the Integer object 3 and return nil. In line 11 the Kernel#puts method is called and the object referenced by the local variable b is passed as an argument to it. This will output the string representation of the Integer object 2 and return nil.

This example demonstrates the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Example 4 ----
What does the following code return? What does it output? Why? What concept does it demonstrate?

def example(str)
  i = 3
  loop do
    puts str
    i -= 1
    break if i == 0
  end
end

example('hello')
This example will output the string "hello" three times on seperate lines and return nil.

In line 10 the example method is invoked and the String object 'hello' is passed as an argument to it. In the method definition the method parameter str is assigned to the String object 'hello' and thus made available to the method body as a local variable str. In line 2 the local variable i is initialized to the Integer object 3. In line 3 the loop method is invoked and the do..end following the loop method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

​ In line 4 the Kernel#puts method is called and the object referenced by the local variable str is passed as an argument to it. This will output the String object "hello" and return nil. In line 5 we are decrementing i by 1 for every loop cycle. In line 5 there is a conditional check i == 0. If this condition is met then the program will break out of the loop.

This example demonstrates the Object Passing as Values in Ruby

Example 5
What does the following code return? What does it output? Why? What concept does it demonstrate?

def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)
In line 6 the local variable a is initialized to the string object "Hello". In line 7 the greetigs method is invoked and the String object "Hello" is passed as an argument to it. In the method definition the method parameter str is assigned to the String object "Hello" and thus made available to the method body as a local variable. Within the method definition in line 2 the Kernel#puts method is called and the object referenced by the local variable str is passed as an argument to it. This will output the string object Hello and return nil. in line 3 the Kernel#puts method is called and the string object "Goodbye" passed as an argument to it. This will output the string object "Goodbye" and return nil. Since this the last evaluated expression within the method definition nil will be the return value of the greetings method invocation.

This demonstrates object passing whereby creating a method definition with a parameter and invoking the method with an argument makes that object passed in as an argument available within the method.

Example 6
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do
  sum += arr[counter]
  counter += 1
  break if counter == arr.size
end 

puts "Your total is #{sum}"
In line 1 the local variable arr is initialized to the array object [1, 2, 3, 4]. In line 2 the local variable counter is initialized to the Integer object 0. In line 3 the local variable sum is initialized to the Integer object 0. In line 35the loop method is invoked and the do..end following the loop method invocation defines the block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Within the block sum is reassigned to the return value of sum + arr[counter] in the first loop counter is 0 . Hence sum is reassigned to 0 + 1 = 1. Now sum points to the Integer object 1 . In the next line counter is reassigned to the return value of counter + 1 which is 0 + 1 = 1 . Now counter point the Interger object 1. This reassignment is carried on until the break condition is met which is when counter == 4. When the condition is met the value od the sum is 10. n line 11 we use string interpolation to input the value of sum on to the string object "Your total is #{sum}" then the Kernel#puts method is called and the string object "Your total is 10" is passed as an argument to it. This will output "Your total is 10" and return nil.

​ This example demonstrates string interpolation and the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

Example 7
What does the following code return? What does it output? Why? What concept does it demonstrate?a = 'Bob'

5.times do |x|
 a = 'Bill'
end

p a
This example demonstrates the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope but the local variable initialized in the inner scope of the block is not available in the outer scope.

In line 1 we are calling the times method on the integer object 5; the given block iterates 5 times passing in values from zero to 5 - 1 to the block parameter x. In line 2 the local varible a initialized in the first instance to string Bill. For the rest of the iteration a is reassigned to Bill. Therefore in line 5 when the Kernel#p method is called and the object referenced by the local variable a is passed as an argument to it. This raises a NameError because Ruby does not recognise a. Since the local variable initialized in the inner scope of the block is not available in the outer scope.

Example 7.1
What does the following code return? What does it output? Why? What concept does it demonstrate?a = 'Bob'

a = "Bob"

5.times do |x|
 a = 'Bill'
end

p a
This example demonstrates the Variable scoping rules in Ruby during the method invocation with a block. The local variables initialized in the outer scope is accessible within the inner scope.

In line 1 local variable a is initialized to the string Bob. In line 2 we are calling the times method on the integer object 5; the given block iterates 5 times passing in values from zero to 5 - 1 to the block parameter x. In line 4 the local varible a initialized in the first instance to string Bill. For the rest of the iteration a is reassigned to Bill. In line 5 when the Kernel#p method is called and the object referenced by the local variable a is passed as an argument to it. This return and output Bill.

Variable Shadowing Example
Example 1
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b
This code will output 5, 5, 4, and 2 on seperate lines.

In line 1 the local variable a is initialized to the Integer object 4. In line 2 the local variable b is initialized to the Integer object 2. In line 4 we are calling the times method on the integer object 2; the given block iterates 2 times passing in values from zero to 2 - 1 to the block parameter. Here the times method is invoked with a block defined by the do..end keyword. Within the block the block parameter a is initialized. In line 5 a is reassigned to 5 and in line 6 the puts method is invoked and the object referenced by the local variable a is then passed as an argument to it. This output the string representation of the Integer5. The times method does this one more time. In line 10 the Kernel#puts method is called and the object referenced by the local variable a is passed as an argument to it. This outputs 4 which is the object referenced by a initialized in the outer scope. In line 11 the Kernel#puts method is called and the object referenced by the local variable b is passed as an argument to it. This outputs the string representation of the integer 2.

This example demonstrates Variable Shadowing. Variable shadowing occurs when both the block parameter and the local variable defined in the outer scope have the same name. When this happens the block, which is passed as an argument to the method invocation, hides the local variable that was defined outside of the block. This can be overcome by assigning different names.

Example 2
What does the following code return? What does it output? Why? What concept does it demonstrate?

n = 10

1.times do |n|
 n = 11
end

puts n
This example will output the Integer object 10.

This example demonstrates Variable Shadowing. Variable shadowing occurs when both the block parameter and the local variable defined in the outer scope have the same name. When this happens the block, which is passed as an argument to the method invocation, hides the local variable that was defined outside of the block. This can be overcome by assigning different names.

In line 1 the local variable n is initialized to the Integer object 10. In line 3 we are calling the times method on the integer object 1; the given block iterates 1 times passing in value 0 to the block parameter. Here the times method is invoked with a block defined by the do..end keyword. Within the block the local variable n is initialized as the block parameter. In line 4 the local variable n is reassigned to the Integer object 11. In line 7 the Kernel#puts method is called and the object referenced by the local variable a is passed as an argument to it. This outputs the string representation of the integer 4 which is the object referenced by n initialized in the outer scope scope of the block.

Example 3
What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = "dog"

loop do |animal|
 animal = "cat"
 break
end

puts animal
This example will output "animal".

This example demonstrates Variable Shadowing. Variable shadowing occurs when both the block parameter and the local variable defined in the outer scope have the same name. When this happens the block, which is passed as an argument to the method invocation, hides the local variable that was defined outside of the block. This can be overcome by assigning different names.

In line 1 the local variable animal is initialized to the string object "dog". In line 3 the loop method is invoked and the do..end following the loop method invocation defines the block. Within the block since the block parameter and the local variable defined in the outer scope have the same name a new variable animal is initialized in line 3. In line 4 animal is reassigned to the string cat. In line 5 ew use the break keyword to break out of the loop. In line 8 the Kernel#puts method is called and the object referenced by the local variable animaml is passed as an argument to it. This will output the string representation of the String object "dog" and return nil.

Object Passing/Variables As Pointers Examples
Example 1
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hi there"
b = a
a = "not here"

# What are a and b?
In line 1 the local variable a is initialized to the string object "hi there". In line 2 the local variable b is initialized and points to the string object referenced by a which is the String "hi there". In line 3 a is reassigned to the String object "not here". Now a points to the string object "not here" and b points to the string object "hi there".

This example demonstrates Variables as Pointers to objects in memory space.

Example 2
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hi there"
b = a
a << ", Bob"

# What are a and b?
This example demonstrates Variables as Pointers to objects in memory space and the mutability of objects.

In line 1 the local variable a is initialized to the string object "hi there". In line 2 the local variable b is initialized and points to the string object referenced by a which is the String "hi there". In line 3 we are calling the << method on the object referenced by the local variable a . The << is a mutating method and it mutates the caller. Hence the original object referenced by a is modified destructively by appending the String ", Bob" to it. Since a and b points to the same object in memoryspace both will be "hi there, Bob".

Example 3
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = [1, 2, 3, 3]
b = a
c = a.uniq

# What are a, b, and c? 
# What if the last line was `c = a.uniq!`?
This example demonstrates Variables as Pointers to objects in memory space and the mutability of objects.

In line 1 the local variable a is initialized to the array object [1, 2, 3, 3]. In line 2 the local variable b is initialized and points to the Array object referenced by a which is the Array [1, 2, 3, 3]. In line 3 the local variable is initialized to the return value of calling the uniq method on the object referenced by a . The uniq method returns a new array with unique non-repeating elements. Now c point to the array [1, 2, 3].

if the last line was c = a.uniq! . Here the uniq! method which is a destructive method is called on object refereced by a. uniq! mutates the caller permanently. Hence the original object referenced by a is modified permanently to [1, 2, 3]. Therefore in line 3 local variable c will be initialized to point to the same object referenced by the local variable a which is [1, 2, 3].

Example 4
What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(b)
 b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)

# What is `a`? 
# What if we called `map!` instead of `map`?
This example demonstrates Object Passing, String Interpolation and Mutability of Objects. Pass by Value in the first case and pass by reference in the second case.

In line 5 the local variable a is initialized to the array object ['a', 'b', 'c']. In line 6 the test method is invoked and the Array object ['a', 'b', 'c'] is passed as an argument to it. In the method definition the method parameter b is assigned to the Array object ['a', 'b', 'c'] and thus made available to the method body as a local variable. In line 2 the map method is called on the object referenced by the local variable b.The map method takes a block defined by the do..end keyword. Within the block, we use string interpolation to input each element to the given string object. Array#map method iterates over the array object and returns a new array with elements transformed based on the return value of the block. Hence the new array returned by the map method invocation is ["I like the letter: a", "I like the letter: c", "I like the letter: c"]. This is also the return value of the method invocation since this is the last evaluated expression within the method definition and Ruby will implicity return it. Here the objects passed behave as Pass By Value in Ruby as the original object is not mutated.

if we called map! instead of map then the original object referenced by both b and a will be mutated since map! is a destructive mehtod and it will mutate the caller. Hence now both a and b will be pointing to the original Array object modified to ["I like the letter: a", "I like the letter: c", "I like the letter: c"]. Here the objects passed behave as Pass By Reference in Ruby as the original object is mutated.

Example 5
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 5.2
b = 7.3

a = b

b += 1.1
# What is `a` and `b`? Why? 
In line 1 the local variable a is initialized to the Float object 5.2. In line 2 the local variable b is initialized to the Float object 7.3. In line 4 the local variable a is initialized to the object referenced by the local variable b. So now a and b points to the same object 7.3 in memory space. In line 6 b is reassigned to 8.4 which is the return value of b + 1.1 . b += 1.1 is ruby's syntactical sugar to write b = b + 1.1.

Hence b references to 8.4 and a referenced tot 7.3. This example demonstrates Variables as Pointers to objects in memory space.

Example 6
What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(str)
 str += '!'
 str.downcase!
end

test_str = 'Written Assessment'
test(test_str)

puts test_str
This example will output 'Written Assessment' and return nil. This example demonstrates Object passing strategy in Ruby. Here the Object is being passed as a value since the original object is not mutated.

In line 6 the local variable test_str is initialized to the string object 'Written Assessment'. In line 7 the test method is invoked and the String object 'Written Assessment' is passed as an argument to it. In the method definition the method parameter str is assigned to the String object 'Written Assessment' and thus made available to the method body as a local variable. line 1-4 the test method is defined. Within the method deifnition in line 2 the local variable str is reassigned to the return value of str + !. This s ruby's syntactical sugar to write str = str + !. Now str binds to the object 'Written Assessment!'. In line 4 the downcase! method , which is a destructive method that mutates the caller, is called on the object referenced by str. The downcase! method converts all the characters in the calling object to lowercase permanently. In Ruby the method returns the last evaluated expression implicity unless a return is specied before. Hence test(test_str) will return 'Written Assessment!'. In line 9 the Kernel#puts method is called and the object referenced by the local variable test_str is passed as an argument to it. This will output the string representation of the String object 'Written Assessment' and return nil.

Example 7
What does the following code return? What does it output? Why? What concept does it demonstrate?

def plus(x, y)
 x = x + y
end

a = 3
b = plus(a, 2)

puts a
puts b
In line 5 the local variable a is initialized to the Integer object 3. In line 1 the local variable b is initialized to the return value of invoking the plus method and passing in two arguments. The first argument is the object referenced by a and the second argument is the Integer 2. line 1-3 plus is defined.

In the method definition the method parameter x is assigned to the Integer object 3 and the method parameter y is assigned to the Integer object 2 and thus made available to the method body as a local variables. In the method body x is reassigned to the return value of x + y which is 5. In Ruby the method returns the last evaluated expression implicity unless a return is specied before. Hence plus(a, 2) will return 5 and b is bound to 5.

In line 8 the Kernel#puts method is called and the object referenced by the local variable a is passed as an argument to it. This will output the string representation of the Integer object 3 and return nil.

In line 10 the Kernel#puts method is called and the object referenced by the local variable b is passed as an argument to it. This will output the string representation of the Integer object 5 and return nil.

This example demonstrates Object passing strategy in Ruby. Here the Object is being passed as a value since the original object is not mutated.

Example 8
What does the following code return? What does it output? Why? What concept does it demonstrate?

def increment(x)
 x << 'b'
end

y = 'a'
increment(y) 

puts y
This example will output "ab" and return nil. This example demonstrates Object passing strategy in Ruby. Here the Object is being passed as a reference since the original object is mutated.

line 1-3 the increment method is defined. In line 5 the local variable y is initialized to the string object "a". In line 6 the increment method is invoked and the String object "a" is passed as an argument to it. In the method definition the method parameter x is assigned to the String object 5"a"and thus made available to the method body as a local variable. In line 2 within the method body the << method, which is a destructive method that mutates the caller, is called on the object referenced by x and the String object b is passed to it as an argument. The original object is changed permanently to ab. In Ruby the method returns the last evaluated expression implicity unless a return is specied before. increment(y) returns ab.

In line 8 the Kernel#puts method is called and the object referenced by the local variable y is passed as an argument to it. This will output the string representation of the String object 'ab' and return nil.

Example 9
What does the following code return? What does it output? Why? What concept does it demonstrate?

def change_name(name)
 name = 'bob'   # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name 
This example will output "jim" and return nil. This example demonstrates Object passing strategy in Ruby. Here the Object is being passed as a value since the original object is not mutated. Methods definitions are self contained and have their own scope. Locals variables initialized in the outer scope of the method definition are not accessible within the innerscope unless they are passed in explicitly as arguments.

In line 1-3 change_name method is defined. In line 5 the local variable name is initialized to the string object "jim". In line 6 the change_name method is invoked and the String object referenced by namewhich points to the object"jim" is passed as an argument to it. In the method definition the method parameter name is assigned to the String object "jim" and thus made available to the method body as a local variable. Now name within the method body points to the object "jim". In line 2 the name variable is reassigned to the String object "bob".

In line 7 the Kernel#puts method is called and the object referenced by the local variable name (this is different to the one within the method definition) is passed as an argument to it. This will output the string representation of the String object "jim" and return nil.

Example 10
What does the following code return? What does it output? Why? What concept does it demonstrate?

def cap(str)
 str.capitalize!  # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name 
This example will output "Jim" and return nil. This example demonstrates Object passing strategy in Ruby. Here the Object is being passed as a reference since the original object is mutated.

In line 1 the local variable name in the outer scope is initialized to the string object "jim". In line 6 cap method defined in line 1 - 3 is invoked and the String object referenced by namewhich points to the object"jim" is passed as an argument to it. In the method definition the method parameter str is assigned to the String object "jim" and thus made available to the method body as a local variable. Now str within the method body points to the object "jim". In line 2 capitalize! is called on the object referenced by str. This is a destructive method and mutates the caller. capitalize! mutates "jim" to "Jim". The original object in memory space is mutated.

In line 7 the Kernel#puts method is called and the object referenced by the local variable name is passed as an argument to it. This will output the string representation of the String object "Jim" and return nil.

Example 11
What is arr? Why? What concept does it demonstrate?

a = [1, 3]
b = [2]
arr = [a, b]
arr

a[1] = 5
arr
This examplle will return [[1, 5], [2]]. This problem demonstrates Variables as pointers in Ruby and Index assignment in Ruby

in line 1 local variable a is initialized to [1, 3]. In line 2 local variable b is initialized to [2]. In line 3 local variable arr is initialized to the array object [a, b]. This will be [[1, 3], [2]]. This is the value returned in line 4. In line 6 the element at the index 1 of the local variable a is reassigned to the Integer 5. The original array object is not modified but the element within a is modified Hence line 7 will return [[1, 5], [2]] as this is the value referenced by arr.

Example12
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
 char.upcase
end

puts arr1 
puts arr2
In line 1 the local variable arr1 is initialized to the array object ["a", "b", "c"]. In line 2 the local variable arr1 is initialized to the return value of arr1.dup. The dup method is called on the object referenced by the arr1, this creates a shallow copy of the array object ["a", "b", "c"]. Now arr1 and arr2 point to two different object in memory space though they have the same value. in line 3 map! is called on arr2which mutates the caller. The map! transforms the elemets in the original object based on the return value of the block defined by the do..end associated by the map! method invocation. Within the block upcase is called on each element of arr2 for each iteration. arr2 is modified to ['A', 'B', 'C'].

In line 7 the Kernel#puts method is called and the object referenced by the local variable arr1 is passed as an argument to it. This will output a, b, c the string representation of the elements in seperate lines within the Array object ["a", "b", "c"] and return nil.

In line 8 the Kernel#puts method is called and the object referenced by the local variable arr2 is passed as an argument to it. This will output A, B, C the string representation of the elements, in seperate lines, within the Array object ['A', 'B', 'C'] and return nil.

Object Mutability/Mutating Methods example
Example 1
What does the following code return? What does it output? Why? What concept does it demonstrate? What values do s and t have? Why?

def fix(value)
 value.upcase!
 value.concat('!')
 value
end

s = 'hello'
t = fix(s)
In line 7 the local variable s is initialized to the string object "hello". In line 8 the local variable t is initialized to the return value of invoking the fix method as passing s as an argument. In line 1-5 the fix method is defined. Within the method definition. The Local variable is initialised to the same object referenced by s. Now both s and value point to the same object in memory space, in line 2 the object referenced by both s and value is mutated to "HELLO" by calling the upcase! method which is destructive and it mutates the caller. In line 3 the object referenced by both s and value is mutated to "HELLO!" by calling the mutating method concat and passing in the string ! as an argument. Line 4 is the last line in the fix method and hence the String object referenced by value is the return value of the method invocation fix(s). This is the object now referenced by t.

Object referenced by t is "HELLO!" and s is "HELLO!". Here the example demonstrates the object mutability within a method body by calling destructive methods on them that mutates the caller.

Example 2
What does the following code return? What does it output? Why? What concept does it demonstrate? What values do s and t have? Why?

def fix(value)
 value = value.upcase
 value.concat('!')
end

s = 'hello'
t = fix(s)
In line 7 the local variable s is initialized to the string object "hello". In line 7 the fix method is invoked and the String object "hello" referenced by s is passed as an argument to it. In the method definition the method parameter value is initialized to the String object "hello" and thus made available to the method body as a local variable. Now s and value points to "hello" in memory space. In line 2 value is reassigned to the return value of calling upcase method, which is a non destructive method, on the object referenced by value. Now value points to a new string object "HELLO". Now value and s point to two different object in memory space. Hence from now on anything called on value will not mutate the object referenced by s. In line 3 the destructive method concat is called on the object object referenced by value and a string ! is passed as an argument to it. This will mutate the object and now value is "HELLO!". In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to explicitly. Therefore fix will return "HELLO!" since this is the last evaluated expression. In line 7 the local variable t is initialized to the return value of fix. So now t points to "HELLO!" and s points to "hello".

Example 3
What does the following code return? What does it output? Why? What concept does it demonstrate? What values do s and t have? Why?

def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end

s = 'hello'
t = fix(s)
​ In line 7 the local variable s is initialized to the string object "hello". In line 8 the a method is invoked and the String object "hello" referenced by s is passed as an argument to it. In the method definition the method parameter value is assigned to the String object "hello" and thus made available to the method body as a local variable. Now s and value points to "hello" in memory space. in line 2 String#<< method is invoked on the object referenced by value and passing the string "xyz" as an argument to it. This method mutates the object referenced by both value and s . So s and value points to "helloxyz". in line 3 the value is reassigned to another string object "HELLOXYZ". Now s and value both point to different object in memory space. Hence s cannot be changed within the method definition. In line 4 the destructive method concat is called on the object object referenced by value and a string ! is passed as an argument to it. This will mutate the object and now value is "HELLOXYZ!". In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to explicitly. Therefore fix will return "HELLOXYZ!" In line 8 the local variable t is initialized to the return value of fix. So now t points to "HELLOXYZ!" and s points to "helloxyz".

This example demonstrates object mutability in ruby.

Example 4
What does the following code return? What does it output? Why? What concept does it demonstrate? What values do s and t have? Why?

def fix(value)
  value = value.upcase!
  value.concat('!')
end

s = 'hello'
t = fix(s)
here s points to "HELLO!" and t to "HELLO!"

In line 6 the local variable s is initialized to the string object "hello".In line 7 the fix method is invoked and the String object 'hello' referenced by s is passed as an argument to it. In the method definition the method parameter value is assigned to the String object 'hello' and thus made available to the method body as a local variable. Now s and value points to 'hello' in memory space. In line 2 the destructive method upcase! is called on the object referenced by value which mutates the object referenced by s and value to HELLO. value is then reassigned to the return value of value.upcase!. Hence it binds to the same object. Now s and value points to 'HELLO' in memory space. . In line 3 the destructive method concat is called on the object referenced by value and an argument ! is passed to it which mutates the object referenced by s and value to HELLO!. In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to explicitly. Therefore fix will return "HELLO!" In line 8 the local variable t is initialized to the return value of fix. So now t and s points to the same string object "HELLO!"

Example 5 --- doubt
What does the following code return? What does it output? Why? What concept does it demonstrate? What values do s and t have? Why?

def fix(value)
 value[1] = 'x'
 value 
end

s = 'abc'
t = fix(s)
Both s and t will point to string object axc .

In line 6 the local variable s is initialized to the string object "abc". In line 7 the fix method is invoked and the String object referenced by s is passed as an argument to it. In the method definition the method parameter value is assigned to the String object 'abc' and thus made available to the method body as a local variable. Now s and value points to 'abc' in memory space. In line 2 the index reassignment String#[]= method is called on the object referenced by value and an argument Integer 1 is passed to it. This is a destructive method and it mutates the object to 'axc'. Hence now both s and value point to string 'axc'. In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to explicitly. Since value is the last evaluated expression in fix. In line 7 local vaeriable t is initialized to 'axc'.

Here the example demonstrates the concept of mutability of objects using a destructive method call. When an operator within the method mutates the caller, it will modify the original object.

Example 6
What does the following code return? What does it output? Why? What concept does it demonstrate?

def a_method(string)
 string << ' world'
end

a = 'hello'
a_method(a)
p a
​ In line 5 the local variable a is initialized to the string object "hello". In line 5 the a_method method is invoked and the String object 'hello' referenced by a is passed as an argument to it. In the method definition the method parameter string is assigned to the String object 'hello' and thus made available to the method body as a local variable. Now a and string points to 'hello' in memory space.

In line 2 the destructive method String#<< is called on the object referenced by string which mutates the object referenced by a and string to 'hello world'. In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to explicitly. Therefore a_method will return "'hello world'" since this is the last evaluated expression. In line xx the Kernel#p method is called and the object referenced by the local variable a is passed as an argument to it. This will output the string representation of the String object 'hello world' and return 'hello world'.

Here the example demonstrates the concept of mutability of objects using a destructive method call.

Example 7 --------- attempt later
What does the following code return? What does it output? Why? What concept does it demonstrate?

num = 3

num = 2 * num
​ In line 1 the local variable arrnum is initialized to the Integer object 3. In line 3 the Integer#* is invoked on the Integer 2 and this will raise and error. Hence the value of local variable num will be initalized to the Object nil on line 3 by the = assignment method.

Example 8
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = %w(a b c)
a[1] = '-'
p a
The above example will output and return ['a', '-', 'b']. This example demonstrates the concept of indexed reassignment

In line 1 the local variable a is initialized to the array object "['a', 'b', 'c']". In line 2 the index reassignment String#[]= method is called on the object referenced by a and an argument Integer 1 is passed to it. This is a destructive method and it mutates the object to ['a', '-', 'b']. In line 3 the p method is invoked and the object referenced by a is passed as an argument to it. This outputs ['a', '-', 'b'] and returns ['a', '-', 'b'].

Example 9
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name    
On line 1 the local variable name is initialized to the string object "jim". In line 6 the change_name method is invoked and the String object 'jim'referenced by name is passed as an argument to it. In the method definition the method parameter name is assigned to the String object 'jim' and thus made available to the method body as a local variable. Now name and the local variable in the outer scope points to 'jim' in memory space.

Within the method definition the method local variable name is reassigned to the String bob. The object referenced by the local variable name in the outer scope is not modified as Methods definitions are self contained and have their own scope. Locals variables initialized in the outer scope of the method definition are not accessible within the innerscope unless they are passed in explicitly as arguments. The local variables initialized in the inner scope of the method are not accessible outside of the method definition.

In line 7 the Kernel#puts method is called and the object referenced by the local variable name is passed as an argument to it. This will output the String object 'jim'. This is because the object referenced by the local variable name is not mutated within the method definition. This is because Ruby always looks for the variables first and if it cannot find it then it looks for a method with a same name.

Example 10
def add_name(arr, name)
  arr = arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names
​ On line 5 the local variable names is initialized to the Array object ['bob', 'kim']. In line 6 the add_name method is invoked and is passed two arguments to it names and the String 'jim'. Line 1 - 3 the add_name method is defined. Within the method definition the object referenced by the name local varible is assigned to local variable arr and the String 'jim' is assigned to the method local variable name. On line 2 the destructive method << is invoked on the lcoal variable arr and the object referenced by name is passed as an argument to it . This Mutates the object. So now arr is ["bob", "kim", "jim"]. arr is now reassigned to ["bob", "kim", "jim"] hence arr binds to the same object. On line 7 the Kernel#puts method is called and the object referenced by the local variable names is passed as an argument to it. This outputs the elements of the Array object in seperate lines as 'bob', 'kim', 'jim'. Here the example demonstrates the concept of mutability of objects using a destructive method call. When an operator within the method mutates the caller, it will modify the original object.

Each, Map, Select Examples
Example 1
What does the following code return? What does it output? Why? What concept does it demonstrate?

array = [1, 2, 3, 4, 5]

array.select do |num|
  puts num if num.odd?
end
​ On line 1 the local variable array is initialized to the Array object [1, 2, 3, 4, 5]. On line 3 the select method is invoked on the object referenced by array. Array#select method iterates over the array and applies the block for each element in the array. The Array#select method returns a new array with the selected elements based on the truthiness of the return value of the block. If the return value of the block is truthy then the current element is selected. If the return value of the block evaluates to false then the current element is not selected. Since for each iteration the return value of the block is nil which is a falsey value not of the elements are selected. Hence the elements which are odd numbers within the array is output on seperate lines from the Array object [1, 2, 3, 4, 5] and an empty array [] is returned.

Example 2
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }
On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the select method is invoked on the object referenced by the local variable arr. Array#select method iterates over the array and applies the block for each element in the array. The Array#select method returns a new array with the selected elements based on the truthiness of the return value of the block. If the return value of the block is truthy then the current element is selected. If the return value of the block evaluates to false then the current element is not selected.

arr.select { |n| n.odd? } on line 3 will return a new array [1, 3, 5, 7, 9] with odd Integers as elements from the given collection.

Example 3
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
end
p new_array
​ On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the select method is invoked on the object referenced by the local variable arr. The block is defined by the do..end keyword along side the select method invocation. Array#select method iterates over the array and applies the block for each element in the array. The Array#select method returns a new array with the selected elements based on the truthiness of the return value of the block. If the return value of the block is truthy then the current element is selected. If the return value of the block evaluates to false then the current element is not selected.

The return value of the expression n + 1 always returns a truthy value. Hence all the elements in the original array will be selected and returned as a new array. On line 3 the local variable new_array is initialized to the return value of calling the select method on arr. So new_arr now points to a new object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. In line 6 when new_array is passed as an argument to the p method invocation, the array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] is output and returned.

Example 4
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n| 
  n + 1
  puts n
end
p new_array
On line 7 the p method is invoked and the object referenced by the local variable new_array is passed as an argument. This will output an empty array [] and return the same.

On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the select method is invoked on the object referenced by the local variable arr. The block is defined by the do..end keyword along side the select method invocation. Array#select method iterates over the array and applies the block for each element in the array. The Array#select method returns a new array with the selected elements based on the truthiness of the return value of the block. If the return value of the block is truthy then the current element is selected. If the return value of the block evaluates to false then the current element is not selected.

For every iteration the select method returns a falsey value. Hence none of the elements are selected and select returns an empty array [], which is inturn assigned to the local variable new_array.

Example 5
What does the following code return? What does it output? Why? What concept does it demonstrate?

words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array
​ On line 1 the local variable words is initialized to the Array object ["jump", "trip", "laugh", "run", "talk"]. On line 3 the map method is invoked on the object referenced by the local variable words. The block is defined by the do..end keyword along side the map method invocation. Array#map method iterates over the array and applies the block for each element in the array. Array#map method iterates over the array object and returns a new array with elements transformed based on the return value of the block.

For every iteration the current element is passed as an argument to the block and is assigned to the block parameter word . In line 4 word.start_with?("t") returns either true if the first character of the element is t otherwise false is returned. map method invocation here return a new array [false, true, false, false, true] having the same number of elements as the calling object with each elements transformed based on the return value of the block.

On line 7 the p method is invoked and the object referenced by the local variable new_array is passed as an argument. This will output an empty array [false, true, false, false, true] and return the same.

Example 6
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }
​ On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the each method is invoked on the object referenced by the local variable arr. The block is defined by the do..end keyword along side the each method invocation. Array#each method iterates over the array object it is called on and applies the block to the current element on each iteration. The Array#eachmethod returns the original array object it was called upon. The return value of the block does not influence the return value of the #each method.

For every iteration, within the block, the current element refererenced by the block parameter n is passes as an argument to the puts method invocation which outputs the current element. Therefore arr.each { |n| puts n } will return the original calling object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] and ouput the string representation of each element, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 , on seperate lines.

Example 7
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

incremented = arr.map do |n| 
            n + 1
            end
p incremented
On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the map method is invoked on the object referenced by the local variable arr returns a new array [2, 3, 4, 5, 6, 7, 8, 9, 10, 11] ,with each element incremented by 1 ,which is assigned to the local variable incremented. The block is defined by the do..end keyword along side the map method invocation. Array#map method iterates over the array and applies the block for each element in the array. Array#map method iterates over the array object and returns a new array with elements transformed based on the return value of the block.

On line 6 the p method is invoked and the object referenced by the local variable incremented is passed as an argument. This will output [2, 3, 4, 5, 6, 7, 8, 9, 10, 11] and return [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

Example 8
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
end
p new_array
The block is defined by the do..end keyword along side the map method invocation. Array#map method iterates over the array and applies the block for each element in the array. Array#map method iterates over the array object and returns a new array with elements transformed based on the return value of the block.

On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the map method is invoked on arr and for each iteration the current element is passed as an argument to the block which is assigned to the block parameter n. The expression n > 1 in line 4 checks for the condition and returns true if the condition is met otherwise returns false. Since this is last evaluated expression within the block this is the return value of the block. Hence the map method invocation on arr returns a new transformed array [false, true, true, true, true, true, true, true, true, true] which is assigned to the local variable new_array. On line 6 the p method is invoked and the object referenced by the local variable new_array is passed as an argument. This will output [false, true, true, true, true, true, true, true, true, true] and return [false, true, true, true, true, true, true, true, true, true]

Example 9
What does the following code return? What does it output? Why? What concept does it demonstrate?

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.map do |n| 
  n > 1
  puts n
end
p new_array
This example will output 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 on seperate lines and will return [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil].

On line 1 the local variable arr is initialized to the Array object [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. On line 3 the map method is invoked on the object referenced by the local variable arr. The block is defined by the do..end keyword along side the map method invocation. Array#map method iterates over the array object and passes the current element as an argument to the block which is assigned to the block parameter n. The map method executes the block for each iteration and returns a new array with elements transformed based on the return value of the block.

Here the return value of the block for every iteration is nil since invoking puts method will output the current element and returns nil and this is last evaluated expression within the block. Hence the map method invocation on the the local variable arr will return a new array [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]. This return value is assigned to the local variable new_array in line 3.

On line 7 the p method is invoked and the object referenced by the local variable new_array is passed as an argument. This will output [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil] and return [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil].

Example 10
What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hello"

[1, 2, 3].map { |num| a }
​ On line 1 the local variable a is initialized to the String object "hello". On line 3 the map method is invoked on the object [1, 2, 3]. The block is defined by the do..end keyword along side the map method invocation. The map method executes the block for each iteration and returns a new array with elements transformed based on the return value of the block. The map invocation on the array object will return a new array ["hello", "hello", "hello"] with transformed elements based on the return value of the block. Here "hello" is the last eveluated expression within the block hence it is the return value of the block.

Example 11
What does the following code return? What does it output? Why? What concept does it demonstrate?

[1, 2, 3].each do |num|
  puts num
end
The example will return the array [1, 2, 3] since the each method returns the object it was called on. This example will output the string representation of the Integers 1, 2 and 3 on seperate lines.

The block is defined by the curley braces {}along side the each method invocation. Array#each method iterates over the array object it is called on and applies the block to the current element on each iteration. The Array#eachmethod returns the original array object it was called upon. The return value of the block does not influence the return value of the #each method.

For every iteration the each method passes the current element as an argument to the block which is assigned to the block parameter num. On line 2 the Kernel#puts method is called and the object referenced by the local variable num is passed as an argument to it. This will output the string representation of the Integer object 1, 2 and 3 on seperate lines.

Other collection methods Examples
What does the following code return? What does it output? Why? What concept does it demonstrate?

Example 1
[1, 2, 3].any? do |num|
  num > 2
end
The any? method iterates over the collection it is called upon and passes the current element to the block defined by the do..end keyword alongside the any? method invocation. Within the block the current element is assigned to the block parameter . The any? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for any of the element in the collection then the any? method will return true

The any? method iterates over the collection [1, 2, 3] passes them as arguments to the block where it is assigned to the block parameter num. In line 2 num > 2 returns a truthy value for the third element 3 . Hence any? method will return true

Example 2
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
The any? method iterates over the collection it is called upon and passes the current element to the block defined by the do..end keyword alongside the any? method invocation. Within the block the current key-value pair is assigned to the block parameter . The any? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for any of the key-value pair in the collection then the any? method will return `true

The block takes two parameters representing the key-value pairs. The block evaluates to false for all key-value pairs . Hence any? method invocation in this example will return false.

Example 3
[1, 2, 3].all? do |num|
  num > 2
end
The all? method iterates over the collection it is called upon and passes the current element to the block defined by the do..end keyword alongside the all? method invocation. Within the block the current element is assigned to the block parameter . The all? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for all of the elements in the collection then the all? method will return true. If the block returns a falsey value for any of the elements then all? will return false

The all? method is invoked on the array [1, 2, 3]. The method iterates over the array and passes each element as an argument to the block where it is assigned to the block parameter num. The block returns a truthy value for only one element 3. Hence the all? method invocation returns false.

Example 4
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
The all? method iterates over the collection { a: "ant", b: "bear", c: "cat" } it is called upon and passes the current key-value pair as arguments to the block defined by the do..end keyword alongside the all? method invocation. Within the block the current key-value pair is assigned to the block parameters key and value . The all? method looks for the truthiness of the return value of the block. If the block returns a "truthy" value for all of the elements in the collection then the all? method will return true. If the block returns a falsey value for any of the elements then all? will return false.

The any? method invocation will return true as the block returns a truthy value for all the key-value pairs within the collection.

Example 5
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
The each_with_index method is called on the array [1, 2, 3]. The do..end keyword alongside the each_with_index? method invocation defines the block. For each iteration the current element and its index are passed as an arguments to the block and assigned to the block parameters num and index respectively. In line 2 num and index are input into the string object through String Interpolation. This interpolated string is then passed as an argument to the puts method invocation which outputs the string for each iteration. The each_with_index method ignores the return value of the block and returns the calling collection object [1, 2, 3].

Example 6
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
The each_with_object takes a method argument which is a collection object and a block defined by do..end keywords alongside the each_with_object method invocation. The method iterates over the collection { a: "ant", b: "bear", c: "cat" } upon which it is called and for every iteration the current key-value pair in the collection is passed as an argument to the block and assigned to the first method parameter pair and the method argument [] is also passed as an argument to the block and is assigned to the second method parameter array. After iterating, the method invocation returns the collection object that was passed in as the method argument.

When the each_with_object is invoked on a hash the first block parameter is converted into an array. Within the block array can be manipulated and the last element in the pair array is appended to array for each iteration. Since each_with_object returns the method argument. The above example will return ["ant", "bear", "cat"]

Example 7
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
The each_with_object takes a method argument which is a collection object { a: "ant", b: "bear", c: "cat" } and a block defined by do..end keywords alongside the each_with_object method invocation. The method iterates over the collection upon which it is called and for every iteration the current key-value pair in the collection is passed as an argument to the block and assigned to the first method parameter (key, value) and the method argument {} is also passed as an argument to the block and is assigned to the second method parameter hash. After iterating, the method invocation returns the collection object that was passed in as the method argument.

When the each_with_object is invoked on a hash the first block parameter is converted into an array. A parantheses can also be used to capture the key and value from a key-value pair seperately. Within the block a new key-value pair is inserted for each iteration. Finally the each_with_object invocation returns the hash object {"ant"=>:a, "bear"=>:b, "cat"=>:c}.

Example 8
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd 
p even
The partition method returns a nested array divided by the return value of the block.

In line 1 partition method is invoked on the array [1, 2, 3]. The partition method takes a block defined by the do..end keyword along side the partition method invocation. Within the block each current element is assigned to the block parameter num. The block checks if num is an odd number. Since this is the return value of the block the partition method invocation returns a new nested array [[1, 3],[2]]. In line 1 we see parallel assignment where the local variable odd is initialized to [1, 3] and the local variable even is initialized to [2].

On line 5 the p method is invoked and the object referenced by the local variable odd is passed as an argument. This will output [1, 3] and return [1, 3]

On line 6 the p method is invoked and the object referenced by the local variable even is passed as an argument. This will output [2] and return [2]

Truthiness Example
What does the following code return? What does it output? Why? What concept does it demonstrate?

Example 1
a = "Hello"

if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
​ On line 1 the local variable a is initialized to the String object "Hello". Since a evaluates to true in the conditional statement "Hello is truthy" is output

Example 2
def test
  puts "written assessment"
end

var = test

if var
  puts "written assessment"
else
  puts "interview"
end
On line 5 the local variable var is initialized to the return value of invoking the test method. The test method is defined from line 1-3. in line 2 the String "written assessment" is passed as an argument to the puts method invocation which outputs the String "written assessment" and returns nil. In Ruby methods will implicity return the last evaluated expression unless the return keyword is used to return explicitly. Therefore test will return nil since this is the last evaluated expression. The local variable var now points to the object nil. Since nil is a falsey value var evaluates to false in the conditional statement from line 7 - 11. The else branch is triggered and "interview" is output when the string "interview" is passed as an argument to the puts method invocation in line 10. This example outputs the String objects "written assessment" and "interview" in seperate lines.