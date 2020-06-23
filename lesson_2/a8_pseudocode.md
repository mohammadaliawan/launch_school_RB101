# Pseudocode

When you first approach a problem its important that you spend some time to understand it. To do that you have to load the problem into your brain. 

Only then you can dissect it, understand its different parts and come up with an execution path to solve it.

There are two layers to solving any problem:

1. The logical problem domain layer.
2. The syntactical programming language layer.

Pseudocode helps us focus on the logical layer without being dragged down by the programming language layer because we dont have to deal with the syntax issues.

The problem with pseudo code is that we cannot verify its logic until we code it with a programming language.

First write an informal pseudocode 
Then write a formal pseudocode to solve the problem. This gives the pseudocode a little more structure and allows us to think at a more detailed level.

Keywords to use

keyword | meaning|
START: start of the program
SET: sets a variable we can use for later
GET: retrieve input from user
PRINT: displays output to user
READ: retrieve value from variable
IF / ELSE IF / ELSE: show conditional branches in logic
WHILE: show looping logic
END: end of the program

After writing the pseudocode write the code and verify its logic.

For sophisticated problems take a piecemeal approach to applying pseudocode, then translate that to ruby code tp verify that the logic is correct, then moving on to the next piece in the problem.

Step by step we can slowly load the problem into our brain and verifying that the logic each step of the way.

For example:

1. a method that returns the sum of two integers:

- Given two integers
- Add them togather
- Return the Result

Formal
START

- DEFINE a method named sum that takes two arguments int_1 and int_2
- SET result = int_1 + int_2
- RETURN result

END

2. A method that takes an array of strings and returns a string that is all those strings concatenated togather.

- Given an array of strings
- Iterate through the array one by one
  - Add the current string at the end of a new empty string
  - On each next iteration keep adding the current string in the array to the previous string.

START

DEFINE a method that takes one argument: str_array

SET iterator = 0
SET final_string = ""

WHILE iterator < str_array length
  append string at "iterator" position in str_array to final_string

  iterator = iterator + 1

RETURN final_string

END

3. A method that takes an array of integers and returns a new array with every other element

- Given an array of integers
- iterate through the array one by one
  if index of the current array element is even
    Go to the next element
  otherwise, add the integer to an array

START

DEFINE a method that takes one argument : int_array

SET iterator = 0
SET new_array = []

WHILE iterator < length of int_array
  IF iterator is even then
    go to the next iteration
  ELSE
    append the element at index "iterator" to new_array

  iterator = iterator + 1

  PRINT new_array
