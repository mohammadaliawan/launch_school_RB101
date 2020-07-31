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

Three Steps:

1. Read the Problem Description Multiple Times
2. Check the Test Cases
3. Verify all your assumptions either from the test cases or If any part of the problem is unclear, ask the interviewer. Dont Make Assumptions. Clarify Everything you can think of.

If you can't determine the answer with the test cases or problem description, you should ask the interviewer to clarify this for you.

### Output of this Step:

Input:
Output:

Rules:

Explicit: Problem statement


Implicit: Check test cases, ask interviewer

## DataStructure / Algorithm

Data Structures Influence your Algorithm.

The biggest problem students have is when providing sufficient detail when writing algorithm.

```
# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

```

```
# The Problem:
# Write a method which has:
# Input: string
# Output: an array of sub strings that are palindromes

# Rules:
# Explicit: 
# - Return substrings which are palindromes in an array
#   - substring: substring is a contiguous sequence of characters within a string.
#   - a palindrome: a word that spells the same backwards and forwards.
# - Palindrome words are case sensitive e.g "Mom" is not a palindrome, "mom" is.
# - return an empty array If the string does not contain any palindromes 
# - Return an empty array if input is empty string

# Impiclit:
    - Order of substrings?
    - Palindromes need to be atleast 2 characters long and can be the same chars
# _ - Spaces can be part of the palindrome word
    - String containing numeric characters can also be part of the palindrome.
    - non alpha numeric chars can also be part of palindromes.
#   - If only spaces in the input string then return an empty array
#   - If input other than a string:
#     - Integer: convert to a string
#     - []: Raise an Error
      - nil: Raise an Error
```

### Algorithm Approach:

After selecting your data structures:
