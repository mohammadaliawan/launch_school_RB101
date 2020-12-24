# The PEDAC Process

 All the steps in this process are about understanding the problem

## P: Understanding the Problem

 Helps to establish a frame of reference for understanding the problem and determining a solution.

 - Establish the Rules/ Define the boundaries of the problem
  - Examine and analyze any and all the information available to us about the problem.
  - Restate the problem in a different format.
    - Extracting elements of the problem description into a set of rules or requirements.
  - Explicit Rules: clearly stated
  - Implicit Rules: not stated, can be extrapolated from examples, test cases, problem analysis
  - Ask questions
  - Spend enough time here, dont rush this step


## E: Examples and Test Cases

 - can confirm/ refute assumptions
 - Help to answer questions about implicit requirements
 - act as assertions which help to codify the rules and boundaries 


## D: Data Structures

 - Help to reason with data more logically.
 - Help us to interact with data at an implementation level.
 - Thinking in terms of data structures is part of the overall problem solving process.
 - Data Structures are closely linked to the algorithm
  - Set of steps from the input to the Output
  - These steps involve strucuring data in a certain way,

## Algorithm

 - A logical sequence of steps for accomplishing a task or objective.
 - Closely linked to the data structures
 - the steps required to structure the data in a way that produces the required output.

 - Stay abstract and high level
   - write out the algorithm in plain english words. No formal psuedocode. 
   - avoid implementation details
   - No psuedocode either
   - Dont worry about efficiency for now.
   - See if any of the steps need further detail (e.g any vague steps that seem too complex to be just one step)
      - Extract a complex step to a mini problem
      - Analyze the mini problem using PEDAC
      - Come up with an algorithm for this mini problem
 - You can come back to the algorithm to add implementation level notes once you start the implementation in code.
 - The primary objective is to come up with an algorithm that solves the problem.

## Implementing a solution in code

  - Translate the solution algorithm to code
  - Create implementation level notes i.e psuedocoding
  - THink about the algorithm in context of the programming language
     - Language features and constraints 
     - Characteristics of data structures
     - Built in functions/ methods
     - syntax and coding patterns 
  - Create test cases
  - Code with intent : What each line of code is doing

## Final Thoughts:

- PEDAC is not completely a linear process
- Move back and forward between the steps
- Swith from the implementation mode and problem solving mode when necessary
- Don't try to problem solve at the code level.


## Sum Even Number Rows:

 Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

 - **Rules/ Requirements**

  - sequence of even integers
  - sequence begins with 2
  - integers are consecutive
  - sequence is grouped into rows
  - Each row incrementally larger: 1,2,3,...
  - Row number given is equal to the number of elements in the Row.
    - Row 1 has 1 element
    - Row 2 has 2 elements
  - Input: a single integer
    - Identifies a 'row', which is a subset of a sequence of integers
  - Output: a single integer
    - represents the sum of integers in the row identified by the input integer.

  - Sequence:
    2,
    4,6
    8,10,12
    14,16,18,20
    22,24,26,28,30
    32,34,36,38,40,42

  How do we create the structure?

    - create the structure as we need it, based upon the input row number we are given.

 - **Examples**

  row number: 1 --> sum of integers in row: 2
  row number: 2 --> sum of integers in row: 10
  row number: 4 --> sum of integers in row: 68

 - **Data Structures**

  - input: integer(row number)
  - Output: integer(sum of row)
  - Sequence: 2d array, each sub array is a row.

 - **Algorithm**

  1. Create an empty "rows" array to contain all of the rows
  2. Create a row array and add it to the overall rows array
  3. Repeat step 2 until all the neccesary rows have been created.
    - All the rows have been created when the length of the overall array is equal to the input integer
  4. Sum the final Row
  5. Return the sum 

  *Problem: Create a Row*

  Rules:
  - Row is an array
  - Array contains integers
  - Integers are consective even numbers
  - Integers in each row form part of an overall sequence
  - Rows are of different lengths
  - input: the information required to create the output
      - the start integer, the length of the row
  - Output: the row itself [4,6]

  Examples:
  start: 2, row_legnth: 1 --> [2]
  start: 4, row_length: 2 --> [4,6]
  start: 8, row_length: 3 --> [8, 10, 12]

  DS:
  - Array of Integers

  Algorithm:
  1. Create an empty row array to contain the integers
  2. Add the start integer to the row
  3. Increment the start integer by 2 to get the next integer in the sequence
  4. Repeat steps 2 & 3 until the array has reached the correct length
  5. Return the array

