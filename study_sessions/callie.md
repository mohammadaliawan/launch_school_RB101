# Introductions
# Coderpad
# PEDAC Introduction & Explanation
# How much do I write for PEDAC?
# Solving a problem with PEDAC



=begin

- Understanding the Problem
  - Goal: understand what you're being asked to do
  - Establish the rules/define the boundaries of the problem
  - What are the explicit and implicit requirements?
  - Ask clarifying questions (& check test cases)


- Examples and Test Cases
  - Goal: understand more about what you're being asked to do
  - Use these to confirm or refute assumptions
  - A good way to see the rules/boundaries but in actual code

- Data Structures
  - Goal: begin to think logically and solution-based about the problem
  - How we structure our data is closely related to our algorithm/how we want to go about solving our problem
  - Helps us reason with data more logically
  - What does our data look like when we get it? (input)
  - What does our data look like when we return it? (output?)
  - What does our data need to look like in between, or will it be the same?

- Algorithms
  - Goal: write out high level steps to solve the given problem
  - A logical sequence of steps for accomplishing a task or objective
  - Be abstract and high level (don't box yourself in)
  - You are programming-language-agnostic right now
  - Find a solution that works (don't worry about efficiency for now)
  - Can create substeps for different parts
  - Can even separate concerns into a helper method
  - You can (and should) return to your algorithm during the implementation stage to update

- Implementing a Solution in Code
  - Goal: translate the algorithm into your programming language of choice (Ruby)
  - Now is the time to use pseudo code (if you want) to act as a step between the algorithm and actual code
  - Goal of Pseudo Code: to explore the solution in the programming language
  - Then: follow the algorithm and code the solution
  - If you find that your algorithm doesn't work, return there FIRST and THEN fix your code
  - Good programmers often spend the least amount of time in this step, because they figured everything out in the other steps

- * Test frequently

=end

Given a string
-
- For each character in the alphabet
  - check if it appears in the string


Implementation details:
- create a collection of all the letters in the alphabet # Range#to_a
- convert the input string into an array of chars # String#chars
- Loop through the array of alphabet chars # Array#each
  - for each char in the collection
    - if it is included in the given string # String#include?
        - go to the next char
        else
        return false


- create a collection of all the alphabet letters
- create an answer and set it to true
- make the input string all lower case
- iterate through the alphabet collection
  - if the input string does NOT include the current letter
    - set the answer to false
- return the answer
