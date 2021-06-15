# Flowcharts

Using a flowchart helps us map out the logical sequence of a possible solution in a visual way.

## Imperative/ Procedural vs Declarative

Imperative: Mapping out the step by step logic to solve a problem

Declarative: Using declarative constructs built into the language to solve a problem


## Solving larger number:

### What are the steps to solving a larger problem

Ask the user to give us N collections of numbers. We want to take the largest number out of each collection, and display it.

### Step 1: High Level Pseudocode

while user wants to keep going
  - ask the user for a collection of numbers
  - extract the largest one from that collection and save it (is a sub-process that itself contains a lot of logic. The functionality there is pretty self-contained, so it's a great candidate for a sub-process.)
  - ask the user if they want to input another collection

return saved list of numbers

**Therefore, it's prudent to extract a logical grouping into a sub-process, and to tackle the various pieces separately.**

**Extracting to sub-processes helps us focus on a well defined narrowly scoped set of pseudo-code.**

when we move logic to sub-processes, we are able to use a declarative type of syntax, rather than imperative.

Thinking about the high level logic flows allows you to create sub-processes to narrow down the scope of your application.

From a high level, writing declarative code segments our program into logical sections, allowing us to focus on one section at a time.

From a high level, we can trust that this sub-process will do its job -- it will only return true or false. When we're ready to work on the logic in that validate_input sub-process, we can forget about the larger program, and just focus on the responsibilities of this sub-process.

As you use pseudo-code and flowcharts to help you dissect the logic of a problem, you'll be constantly trying to figure out how detailed the chart and words should be, and what can be extracted to sub-processes.

Start at a high level, using declarative syntax.

- Get the first number
  - Make sure it's valid, otherwise, ask for another
- Get the second number
  - Make sure it's valid, otherwise, ask for another
- Get the operator
  - Make sure it's valid, otherwise, ask again

- Perform operation on the two numbers
- Display result
- Ask if user wants to do another calculation


In the above, you're not yet outlining exactly how to validate the inputs. No specifics or imperative style pseudo-code yet. Once you have the high level steps, it's time to drill down a level into imperative pseudo-code and outline specifics.

By not worrying about the low-level details of how those sub-processes will be implemented, we can think at a higher level about our overall application logic. When we're ready to dive into how each of those sub-processes should work, we can go and create detailed pseudo-code and flowcharts for each of those sub-processes.