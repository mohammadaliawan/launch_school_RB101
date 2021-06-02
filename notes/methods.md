# Methods

You'll often have a piece of code that needs to be executed many times in a program. Instead of writing that piece of code over and over, there's a feature in most programming languages called a procedure, which allows you to extract the common code to one place. In Ruby, we call it a method.

## How do you call a method?

We call (or invoke) the method by typing its name and passing in arguments.

You will also see the term method invocation to refer to calling a method.

## Parameters

Parameters are used when you have data outside of a method definition's scope, but you need access to it within the method definition. If the method definition does not need access to any outside data, you do not need to define any parameters.

## Arguments

Arguments are pieces of information that are sent to a method invocation to be modified or used to return a specific result.

We "pass" arguments to a method when we call it.

```ruby
def say(words)
  puts words
end

say("hello")
```

When we pass those words into the method definition, they're assigned to the local variable words and we can use them however we please from within the method definition.

When we call say("hello"), we pass in the string "hello" as the argument in place for the words parameter. Then the code within the method definition is executed with the words local variable evaluated to "hello".

Note that the words local variable is scoped at the method definition level; that is, you cannot reference this local variable outside of the say method definition.

## Default Parameters

When you're defining methods you may want to structure your method definition so that it always works, whether given parameters or not. Let's restructure our say method definition again so that we can assign a default parameter in case the caller doesn't send any arguments.

```ruby
def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

```

You'll notice that say() prints hello. to the console. We have provided a default parameter that is used whenever our method is called without any arguments. Nice!


## Method Definition Scope

 A method definition creates its own scope outside the regular flow of execution. This is why local variables within a method definition cannot be referenced from outside of the method definition. It's also the reason why local variables within a method definition cannot access data outside of the method definition (unless the data is passed in as an argument).

Method definitions create their own scope that's entirely outside of the execution flow.


## obj.method or method(obj)

There are two ways to call methods that we will discuss in this book. The some_method(obj) format is when you send arguments to a method call; in the previous example, obj is the argument being passed in to the some_method method. Sometimes, you will see methods called with an explicit caller, like this a_caller.some_method(obj). For now it's best to think of the previous code as some_method modifying a_caller. You'll have to memorize which way is required to call a method for now.

## Mutating the Caller

Sometimes, when calling a method, the argument can be altered permanently. We call this mutating the caller.

Method parameters are scoped at the method definition level, and are not available outside of the method definition.

```ruby
def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a

```

In the above code, we passed in a to the some_method method. In some_method, the value of a is assigned to the local variable number, which is scoped at the method definition level. number is reassigned the value "7". Did this affect a's value? The answer is no, because number is scoped at the method definition level and a's value is unchanged.

Therefore, we proved that method definitions cannot modify arguments passed in to them permanently.

Of course, there's an exception to this rule. The exception is when we perform some action on the argument that mutates the caller, we can in fact permanently alter variables outside the method definition's scope.

```ruby
a = [1, 2, 3]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

```

Notice the difference between each print out? We have permanently modified the local variable a by passing it to the mutate method, even though a is outside the method definition's scope. This is because the pop method mutates the caller.


## Return and puts

in Ruby, every method returns the evaluated result of the last line that is executed.

Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

```ruby
def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

```

Here we're saving the returned value of the add_three method invocation in a variable called returned_value. Then we print returned_value to the output to see what it has inside it. Your output should print 7 because that's what the method call returned.

```ruby
def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

```

When you place a return in the middle of the add_three method definition, it just returns the evaluated result of number + 3, which is 7, without executing the next line.

The return reserved word is not required in order to return something from a method. This is a feature of the Ruby language.

## Chaining methods

Because we know for certain that every method call returns something, we can chain methods together, which gives us the ability to write extremely expressive and succinct code.

add_three(5).times { puts 'this should print 8 times'}

This means that we're calling the times method on the returned value of add_three(5), which is 8.

This is a very important aspect of chaining methods together: if anywhere along the chain, there's a nil or an exception is thrown, the entire chained call will break down.

## Method Calls as Arguments

Ruby actually allows us to pass a method call as an argument to other methods

The returned value is what is being passed as arguments.

One very important thing to be aware of when using nested method calls is the use of parentheses to prevent any kind of confusion.

We've seen that method calls always return a value and we can pass that method call as an argument to another method call based on the returned value. Thus it's vital to know what our defined methods are returning, since in the final analysis, this is what is actually being passed as arguments to other method calls.

## What is the Call Stack

The call stack helps Ruby keep track of what method is executing as well as where execution should resume when it returns.

## How does the call stack work

 The call stack puts information about the current method on the top of the stack, then removes that information when the method returns.

 ## What is a stack frame?

 A stack frame is an item in the call stack. It contains the name of the current method being executed.
 The initial stack frame is called the main method or the global top level portion of the program.

 Ruby uses the this initial stack frame to keep track of what part of the main method it is current working on.

```ruby
def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "main method"
```

When this program starts running, the call stack initially has one item -- called a stack frame -- that represents the global (top-level) portion of the program. The initial stack frame is sometimes called the main method. Ruby uses this frame to keep track of what part of the main program it is currently working on.

When program execution reaches the method invocation on line 10, it first updates the main stack frame with the current program location. Ruby will use this location later to determine where execution should resume when second finishes running.

After setting the location in the current stack frame, Ruby creates a new stack frame for the second method and places it on the top of the call stack: we say that the new frame is pushed onto the stack.

Call Stack
-
-
second
main: line 10

Note that the frame for the second method is now stacked on top of the main frame. While the second frame is still on the stack, main remains stuck beneath it, inaccessible. At the same time, the main method becomes dormant and the second method becomes active.

The second method calls the first method on line 6. That action causes Ruby to update the second frame so that Ruby will know where to resume execution later. It then creates a new stack frame for the first method and pushes it to the call stack.

Once the first method begins executing, it invokes the puts method. All Ruby methods, including the built-in ones like puts, share the same call stack. Therefore, we need to record our current location and then push a new frame to the stack:

Call Stack
puts
first: line 2
second: line 6
main: line 10



word.each_with_index do |word, index|
  if index % 3 == 2
    p word
  end
end



=begin
-----------------------INSTRUCTIONS------------------------------------

--------------------------PROBLEM--------------------------------------

Questions:

Input:

Output:

---------------------------RULES---------------------------------------
Explicit:

Implicit:

EdgeCases:


--------------------------ALGORITHM------------------------------------



--------------------------EXAMPLES-------------------------------------



--------------------------PSEUDO CODE----------------------------------



--------------------------CODE WITH INTENT----------------------------------

=end


     callie's
=========================
- # What is PEDAC?
# How much to write for PEDAC
# Solving a problem together
=begin

- Understanding the Problem
  - Goal: understand what you're being asked to do
  - Establish to rules/define the boundaries of the problem
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
    - (This comes with language fluency)
  - Code with intent. Avoid hack and slash.

- * Test frequently

=end
