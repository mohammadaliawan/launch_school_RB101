# Strategy for Solving Complex Programming Problems

=begin

The first step is to understand the problem well. To understand the problem well you need to load the the problem
into you brain. If you jumped straight to coding the solution with whatever strategy comes to your mind first, 
you will have to deal with two things at once that are : 

- You will be trying to come up with a solution as you code but your train of thought will keep getting blocked
by language syntax and language specific issues. Whatever strategy you come up with then would be a very superficail
one. Your solution would not be one that takes care of edge cases. You might not even be able to come with a solution 
that satisfies all the requirements of the problem. You might not be able to come up with any solution at all.
- And you might realize at the end that you have solved the wrong problem. 

So the first thing you need to realize about programming problems is that there are two layers to solving any 
problem:
- The logical problem domain layer
- The programming language layer

When we jump straight to coding you are trying to think about the problem on both levels. And this proves to be very hard
early on when you are a beginner. 

So what can you do to "understand a problem well"? Launch School recommends a techinique called PEDAC. Below I 
will go into detail how this techinque in combination with psuedocoding helps you to solve the problem on two levels.

PEDAC is an acronym for :

  p --> "Understanding the Problem"
  E --> "Examples/ Test Cases"
  D --> "Data structures"
  A --> "Algorithm"
  C --> "Coding with intent"

The first step is "Understanding the problem".

Understanding the Problem:

This step involves reading all the provided information i.e the problem statement and all the test cases/ examples
thoroughly and repeatedly and to rephrase the problem in a different manner. This helps with the "Loading the Problem" into your brain.

A good way to rephrase the problem is :

List down all the requirements and rules regarding the input, output and the process required to get to the output.

Explicit Requirements(from the problem statement):

Implicit Requirements(from the examples/test cases or that can be extrapolated from the problem statement):

Definition of special terms used in the problem statement in the context of the problem:

Assumptions that you are making:

Input:
Output:

Any Edge cases you might have to deal with. Foucs on the input:

At the end of this step you should have a list questions that you could ask to 
confirm any assumptions you have made. Verify you assumptions using examples and test cases provided. And if that
is not possiblem, then ask questions from the interviewer to clarify the matter for you.


Lets take an example:

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

input: string
output: array of sub strings 
process:

Explicit Requirements:
- write a method "palindrome_substrings"
- return all the substrings of the given string which palindromes.
- Palindromes words are case sensitive

Implicit Requirements:
- Output will be an array of palindrome substrings
- For a substring to be a palindrome it has to have atleast 2 characters
- The two characters can be the same.
- If there are no palindrome substrings return an empty array
- If input is empty string, return an empty array

Questions & Special Terms:
Subtrings: is a contiguous sequence of characters within a string
Palindromes: a word that reads the same backwards and forward
Can there be spaces in the given string? If yes,: No spaces
Will spaces be considered part of a substring?


Edge Cases:
input is a non string object? convert to a string


The next step is to come up with Examples and Test cases.

Either these are already provided to you in which case you need to read through them and see if any of your
assumptions can be veriffied from there. You could come with additional test cases which you think should be addressed 
by your solution. But if they are not provided at all then you need to come up with your own test cases which will
act as assertions to help you to codify the rules of the problem and test if your solution fulfills all the requirementsd

=end