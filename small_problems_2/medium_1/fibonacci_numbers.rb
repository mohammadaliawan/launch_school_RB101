Fibonacci Numbers (Recursion)
The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:

Copy Code
F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2
Sequences like this translate naturally as "recursive" methods. A recursive method is one in which the method calls itself. For example:

Copy Code
def sum(n)
  return 1 if n == 1
  n + sum(n - 1)
end
sum is a recursive method that computes the sum of all integers between 1 and n.

Recursive methods have three primary qualities:

They call themselves at least once.
They have a condition that stops the recursion (n == 1 above).
They use the result returned by themselves.
In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing; and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

If you find yourself struggling to understand recursion, see this forum post. It's worth the effort learning to use recursion.

That said, this exercise is a lead-in for the next two exercises. It verges on the Advanced level, so don't worry or get discouraged if you can't do it on your own. Recursion is tricky, and even experienced developers can have trouble dealing with it.

Examples:

Copy Code
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
Hide Solution & Discussion
Solution
Copy Code
def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end
Discussion
The Fibonacci series is a traditional demonstration of how to use recursion. If you've learned to program elsewhere or in another language, you have probably seen this solution.

The ending condition for this method is the easiest part: we know from the description of the problem that the method should return 1 for the 1st and 2nd Fibonacci numbers, so we make that our ending condition.

The recursive part of fibonacci is unusual in that we call ourselves twice, once with nth - 1 as the argument, and again with nth - 2. We add the return values of the two calls to arrive at the nth term result.

For more reading material, here are some posts that you might find useful:

Reading Material 1
Reading Material 2
Reading Material 3
Reading Material 4
A Diversion
This section touches on an advanced topic. You may ignore it for now but read on if you're curious.

If you've worked with recursion before, you may be familiar with something called "tail recursion." Without going into detail, tail recursion is a way to write recursive methods so the language processor can optimize it better; this often leads to faster solutions, and the ability to recurse more "deeply." The solutions are often harder to understand, though.

A tail recursive solution for this exercise is:

Copy Code
def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end
This solution is much faster than our original solution and can handle much larger nth values. On the author's system, the first solution took so long to compute the 50th Fibonacci number that the author gave up. The tail-recursive method returned results for an nth value of 8000 almost instantly. It exceeded the available stack space when nth was a bit larger than 8000.

Further Exploration
We will revisit Fibonacci numbers in the next exercise, and, in particular, we will discuss some problems with our recursive solution. Before you move on, take some time to think about our solution (not the tail recursive solution). Can you identify any faults with it? Not bugs, but problems that impact its usability. How might you try to repair the issues you identify? Don't do any coding right now.