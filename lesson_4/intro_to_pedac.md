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

## P - Understanding the Problem- Making the Problem and requirements crystal clear.

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

Questions & Special Terms:

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

## Data Structures

Data Structures Influence your Algorithm.

 - Help to reason with data more logically.
 - Help us to interact with data at an implementation level.
 - Thinking in terms of data structures is part of the overall problem solving process.
 - Data Structures are closely linked to the algorithm
  - Set of steps from the input to the Output
  - These steps involve strucuring data in a certain way,


## Algorithm Approach:

 - A logical sequence of steps for accomplishing a task or objective.
 - Closely linked to the data structures
 - the steps required to structure the data in a way that produces the required output.

After selecting your data structures:

1. Write a high level algorithm in simple english
  - Stay abstract and high level
   - write out the algorithm in plain english words. No formal psuedocode. 
   - avoid implementation details. No psuedocode either
   - Dont worry about efficiency for now.
   

2. Think about each step of the Algorithm. Which one seems the hardest. See if any of the steps need further detail (e.g any vague steps that seem too complex to be just one step)
    - Extract a complex step to a mini problem
    - Analyze the mini problem using PEDAC
    - Come up with an algorithm for this mini problem, still avoiding implementation details.
    - You can come back to the algorithm to add implementation level notes once you start the implementation in code.
    - The primary objective is to come up with an algorithm that solves the problem.
  
## Implementating a solution in code:

- Translate the solution algorithm to code
  - Create implementation level notes i.e psuedocoding
  for each of the steps of the algorithm if the step seems too complex
  - THink about the algorithm in context of the programming language
     - Language features and constraints
     - Characteristics of data structures
     - Built in functions/ methods
     - syntax and coding patterns 
  - Create test cases
  - Code with intent : What each line of code is doing
  - Test your code after writing each new line of code and check if it runs as expected  

