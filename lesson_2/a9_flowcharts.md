# Flowchart

Using a flowchart helps map out the logical sequence of a possible solution in a visual way.

## Flowchart components:

1. Oval: Start/Stop
2. Rectangle: Processing Step
3. Parallelogram: Input/Output
4. Diamond: Decision
5. Dot: Connector

### Imperative or Procedural way:

In the Imperative or Procedural way to solve a problem you map out the step by step logic our program would need to solve this problem.

### Declerative way:

When you dont map put the exact steps to solving a problem. For example when iterating over a collection you dont tell exactly how you are going to iterate, you just say iterate over a collection.

Higher level programming languages have methods that encapsulate basic concepts like iteration over a collection e.g Array#each.

**Be imperative in your approach when using flowcharts e.g. loop manually** Dont use declarative costructs built in to the language.

## When tackling Larger Problems Extract logical groups into subprocess:

Larger problems have different pieces to the puzzle.

Writing a long pseudocode to solve the entire problem in one go can be dangerous because you cant trust the accuracy of the logic until you code it and run it. 

So we will take a piecemeal approach to pseudocode for sophisticated problems. Write the psuedo code for one part of the problem. code it. test it. verify it. and then move on to the next piece.

Therefore, its important to **extract a logical grouping into a subprocess** and to tackle the various pieces seperately.

Extracting to subprocess helps us focus on a well defined narrowly scoped set of pseudocode.

When we move logic to subprocesses we are able to use a declerative type of syntax rather than imperative. 

Thinking about the high level logic allows us to create sub processes to narrow down the scope of our application.

From a high level, writing declarative code/psuedo-code segments our program into logical sections, allowing us to focus on one section at a time. 

As you use pseudo-code and flowcharts to help you dissect the logic of a problem, you'll be constantly trying to figure out how detailed the chart and words should be, and what can be extracted to sub-processes. This is exactly what a programmer should be thinking about when designing the solution to a problem. You won't get it right the first time.

## Steps to solving a problem:

1. Start at a high level, using declarative syntax.

  High level pseudocode the solution to the problem. Outline the high level steps to solving the problem in a declarative style of pseudocode. No specifics or imperative style yet.

2. Figure out which processes can be extracted to subprocesses.

  Extract a logical grouping into a subprocess

3. Optional: Make a flowchart of the high level steps using declerative style.

4. Once you have the high level steps or overall application logic, Write the Formal Pseudocode and flowcharts in imperative style for each subprocess and outline specifics

5. Verify the logic by coding each subprocess.