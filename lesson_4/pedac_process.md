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


## Algorithm

## Implementing a solution in code

## Sum Even Number Rows:

Imagine a sequence of consecutive even integers beginning with 2. The integers are groups in rows, with the first row containing one integer, the second row two integers, the third row three integers and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row.

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
    ...

  How do we create the structure?

    - create the structure as we need it, based upon the input row number we are given.

- **Examples**

  row number: 1 --> sum of integers in row: 2
  row number: 2 --> sum of integers in row: 10
  row number: 4 --> sum of integers in row: 68

- **Data Structures**

