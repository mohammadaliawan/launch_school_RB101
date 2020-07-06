# Order of Precedence:

The order in which operators are evaluated is called order of precedence.

t’s a set of rules that dictate how and in what order operators are evaluated in an expression.

The operators with higher levels of precedence are prioritized

**BODMAS works in ruby as well**

Parentheses override the default evaluation order and evaluate the inner expression first without regard to the precedence rules. 

I think the problem here is that most precedence charts for Ruby don't show that there is a step between {} and do...end, and this assignment may also skip that step. That step is the binding of an argument to a method and the method name - in this case, p and the return value of array.map (p is, of course, a method). This binding is slightly tighter than the binding between a method call and a do...end block, so array.map gets executed first, then the return value and the block get passed to p as separate arguments.