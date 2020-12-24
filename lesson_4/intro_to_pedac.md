# Introduction to PEDAC


PEDAC is one approach to solving programming problems.

Identify and avoid pitfalls.

P Understand the Problem

E Examples/Test Cases

D Data Structures

A Algorithm

C Code


## Why use PEDAC

Helps you save time and lets you solve **complex** problems effiiciently.

## P - Understanding the Problem- Making the Problem and required solution crystal clear.

  Helps to establish a frame of reference for understanding the problem and determining a solution.

 - Establish the Rules/ Define the boundaries of the problem
  - Examine and analyze any and all the information available to us about the problem.
  - Restate the problem in a different format.
    - Extracting elements of the problem description into a set of rules or requirements.
  - Explicit Rules: clearly stated
  - Implicit Rules: not stated, can be extrapolated from examples, test cases, problem analysis
  - Ask questions
  - Spend enough time here, dont rush this step

Three Steps:

1. Read the Problem Description Multiple Times
2. Check the Test Cases
3. Verify all your assumptions either from the test cases or If any part of the problem is unclear, ask the interviewer. Dont Make Assumptions. Clarify Everything you can think of.

If you can't determine the answer with the test cases or problem description, you should ask the interviewer to clarify this for you.

- Make all the requirements and rules regarding the input/Output/ Process explicit.
- Any special Datastructure requirements. e.g input will be an array.
- Are there any implicit requirements. Implied ones? Make them explicit.
- Dont make assumptions. Ask questions.
- Are there any examples? Note down any implicit requirements from examples. Use computational words e.g. Given this, required this, output this.
- Is there any implied knowledge? e,g use st, rd as appropriate. How are you going to decide what's appropraite here? **Capture that implied knowledge in computational language.**
- Are there any special terms that need further explaination with regards to the problem domain? 
  - Terms with Multiple meanings? What meaning is implied for this problem domain?
  - Terms unfamiliar to you? Define them explicitly.

### Output of this Step:

Input:
Output:
Process:

Requirements & Rules:

Explicit: Problem statement


Implicit: Check test cases, ask interviewer

Special Terms:

Assumptions:

## Examples and Test Cases

 - can confirm/ refute assumptions
 - Help to answer questions about implicit requirements
 - act as assertions which help to codify the rules and boundaries 

### Input / Output Examples - from rules / requirements; the "obvious" results

### Input / Output Examples - Edge Cases

These examples and test cases allow you to come up with appropriate solutions to cases that could be mishandled by your program.

**Remember to Focus on the input** And **ASK QUESTIONS TO CLARIFY**

#### Emptiness : nil, null, "", [], {}

#### Large, Small, Few, Many, 0, 1, Floating points, Integers etc

#### Boundary Conditions

Where do the rquirements change:
Limits to the input;

#### Repetition, Duplication

#### Uppercase/ Lowercase

#### Failures/ Bad inputs

- What kind of Bad inputs can be there? Inputs that will raise exceptions or errors?

- How to handle them?
  - Raise exceptions?
  - Report Errors- Exception Handling
  - Return a value e.g. 0, "", [], nil, null etc.

## DataStructure / Algorithm

Data Structures Influence your Algorithm.

 - Help to reason with data more logically.
 - Help us to interact with data at an implementation level.
 - Thinking in terms of data structures is part of the overall problem solving process.
 - Data Structures are closely linked to the algorithm
  - Set of steps from the input to the Output
  - These steps involve strucuring data in a certain way,


### Algorithm Approach:

 - A logical sequence of steps for accomplishing a task or objective.
 - Closely linked to the data structures
 - the steps required to structure the data in a way that produces the required output.

 - Stay abstract and high level
   - write out the algorithm in plain english words. No formal psuedocode. 
   - avoid implementation details
   - Dont worry about efficiency for now.
   - See if any of the steps need further detail (e.g any vague steps that seem too complex to be just one step)
 - You can come back to the algorithm to add implementation level notes once you start the implementation in code.
 - The primary objective is to come up with an algorithm that solves the problem.

After selecting your data structures:

1. Write a high level algorithm in simple english
2. write out the psuedocode for the main method with SUBPROCESSES
2. Next write out the main skeleton of the method

3. Then go into a little more detail for the hardest step first in the algo
4. Wrtie the pseudocode for this step
5. Code this step and test

6. repeat steps 3,4,5