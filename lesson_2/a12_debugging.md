# Debugging:

Debugging is at the core of what programmers do all day.

Most of the time is spent analyzing and understanding problems, experimenting or coming up with an approach or debugging bugs in the code.

## Patient and Logical Temperament: Key to Debugging

If the key to programming is debugging then the key to debugging is a patient and logical temperament.

Programming is dealing with a constant stream of broken things and learning to deal with those ill feelings of frustration and then transition to a systematic search for a solution.

## Reading Error Messages and Stack Trace:

An error message is called a stack trace and is critical is helping you figure out where to start your debugging.

Learn how to carefully read the stack trace: embedded within the stack trace is the error msg. The error msg will include the first hint where to start looking.

When ruby invokes a method, the method is added to Ruby's 'stack'. 

Stack Trace : shows the flow of execution and where the error occured.

a call made from line 14 in main, then
a call made from line 10 in decorate_greeting, then
a call made from line 6 in greet, then
a call made from line 2 in space_out_letters where the NoMethodError Occured.

The trick is to train your eye to look for the relevant parts of the stack trace and overtime you will be able to spot the error faster and faster.

Every language and library has a certain pattern to their stack trace, so the longer you work with a language or library, the easier it will become

## Resources to use for Debugging:

1. Identify and extract the error msg.
  - Study the error msg.
  - walk backwards through the code to understand how the flow of program arrived at the error condition.
      - Think about the various data being used **at the point of error**
      - How missing or incorrect data could have caused the problem

**Finally use the search engine to look up the error msg** prepend ruby in front of the error msg.

2. Stack Overflow
3. Ruby Documentation

### Steps to Debugging: RED BTC TRAPER UPIS TTS

1. Reproduce the Error

Programmers need a deterministic way to consistently reproduce the problem, and only then can we start to isolate the root cause. 

Reproducing the exact error will often end up being more than half the battle in many tricky situations.

2. Determine the boundaries or scope of the problem or error

When you can consistently reproduce the problem, its time to tweak the data that caused the problem.

Try different versions of the method calls, look at what changes.

How does modifying the data affect the program behavior? Do we get expected errors, or does a new error occur that sheds light on the underlying problem?

What we're trying to do is modify the data or code to get an idea of the scope of the error and determine the boundaries of the problem. 

This will lead to a deeper understanding of the problem, and allow us to implement a better solution.

Most problems can be solved in many ways, and the deeper you understand the problem, the more holistic solution you can come up with.

3. Trace the Code:

and Trap the error : Where exactly the error is originating from e.g a method.

4. Understand the problem well

Breakdown the code in the space where the error has been trapped.

5. Implement a fix:

In some cases, you'll be using a library or code that you can't modify. In those situations, you have no choice but to deal with edge cases in your own code.


6. Fix only one problem at a time:

One very important note is to fix one problem at a time. It's common to notice additional edge cases or problems as you're implementing a fix. Resist the urge to fix multiple problems at once.

7. Test the Fix:

Finally, after implementing a fix, make sure to verify that the code fixed the problem by using a similar set of tests from step #2.

## Techniques for debugging:

1. Line by Line

Being Careful, Patient and developing a habit of reading code line by line, word by word and character by character is your most powerful ability as a programmer.

2. Rubber Duck Technique:

Explain the problem to a rubber duck:  you are forcing yourself to articulate the problem detail by detail.
This often leads to discovering the root of the problem.

3. Walking Away:

Load the problem into your brain i.e understand the problem well and then walk away and look at the problem with fresh eyes.

4. Using pry

```ruby
require "pry"
binding.pry
```

`Ctrl-D` to continue execution of the program.
`exit-program` to exit the program entirely.
