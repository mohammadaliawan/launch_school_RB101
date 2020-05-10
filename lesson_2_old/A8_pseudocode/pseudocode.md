# Pseudocode for a Method that returns the sum of two integers


## Casual

- Given two integers
- Add the two integers
- Return the result

## Formal

START

 Given two Integers

 SET result = sum of the two integers

 RETURN result


# Pseudocode for a Method for concatenating strings in an array

## Casual

- Given an Array of strings
- Make a new empty string named result_string
- Iterate through string elemetns of the Array 
  - On each Iteration add the array string element to the result_string

## Formal

START

Given an array of strings str_ary

SET str = empty string

SET iterator = 1

while iterator <= str_ary length
  SET str = value of str before current iteration + " " + value of str_ary at space "iterator"

PRINT str

END
  

# Pseudocode for a Method that deletes every other element of an array

## Casual

- Given an array of integers

- Make a new empty array

- Iterate through the array
  - if the index of the current element in the iteration is even then put it into the empty array at the end.
  - if it is not even then dont do anything, move to next iteration

- 

## Formal

START

Given an array of integers

SET new_ary = empty array
SET iterator = 0

WHILE iterator <= length of array of integers - 1
  if iterator value is even
    push the element of the array to the new_ary
  else
    move to the next iteration

PRINT new_ary

END

