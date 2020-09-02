# Looping

## What are loops used for?


## Example of a loop

Incrementing each element in array of integers by 1:

```ruby
arr = [1,2,3,4,5] # Init a local variable arr and assign it an array of integers
counter = 0 # init a local variable counter and assign it to an integer 0, this will used as the index to access elements in the array

# We invoke the Kernel#loop method and pass in a block,
loop do
  arr[counter] += 1 # Using the Array#[]+=, Element Reassignment method, we increment the integer at index counter by 1
  counter += 1 # Then we increment the counter by 1
  break if counter == arr.size # check if the value assigned to counter has reached the size of the array which is 1 more than the last index in the given array, if it is we break from the loop
end
```
## Controlling a Loop

To control a loop so that it executes only a certain number of times that is predetermined by us, we need to keep track of how many iterations have been performed. To do that we use a variable counter and increment counter by 1 each time an iteration is performed.

```ruby
counter = 0

loop do 
  puts "hello"
  counter += 1
  break if counter == 5
end

```

### Break Placement

Also, if an if condition is appended to the break statement, then the break will be executed when that condition becomes true

The placement of break in your block for loop, changes how your loop will be executed.

If placed at the beginning of your loop then that mimics a while loop, where the condition to break from the loop is checked at the beginning of each iteration.

If placed at the end, this will mimic the do/while loop, in which case the loop will be executed atleast once, the condition to break will checked at the end of the first iteration and all subsequent iterations.

### Next

`next` is used in loops to skip the rest of the current iteration, and start the next one.


**Similar to break, when next is executed, any code after it will be ignored.**

## Iterating over collections

### Strings

```ruby
alphabet = ('a'..'z').to_a.join("")
counter = 0

loop do 
  break if counter == alphabet.size
  puts alphabet[counter]
  counter += 1
end
```

Instead of using a specific condition in the if modifier to break out of the loop, its preferrable to use a more general condition. Because if some how the specific condition in the if modifier is surpassed, it would result in an infinite loop.

### Arrays

```ruby
colors = %w(green blue purple orange)

counter = 0

loop do
  break if counter == colors.size

  puts "I am the color #{colors[counter]}"

  counter += 1
end
```

### Hashes

Hashes use key-value pairs instead of zero based index to store elements. This means that each value in a hash is associated with a specific key.

Since hash keys can be any type of object a simple counter variable won't allow us to fetch the values.

```ruby
number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}

pets = number_of_pets.keys
counter = 0

loop do
  break if counter == number_of_pets.size # Use Hash#size
  current_pet = pets[counter] # 

  current_pet_number = number_of_pets[current_pet]

  puts "I have #{current_pet_number} #{current_pet}"

  counter += 1
end
```

Iterating over hashes is a two step process:
- Use a counter to iterate over keys of the hash---> use the counter to access the keys
- Use the key to fetch the value for that key


## Conclusion

Looping over Collections comprises of four basic elements:

- a loop
- a counter
- a way to retrieve the current value
- a way to exit the loop