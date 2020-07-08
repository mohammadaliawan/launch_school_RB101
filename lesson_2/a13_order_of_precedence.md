# Order of Precedence:

The order in which operators are evaluated is called order of precedence.

t’s a set of rules that dictate how and in what order operators are evaluated in an expression.

The operators with higher levels of precedence are prioritized

**BODMAS works in ruby as well**

Parentheses override the default evaluation order and evaluate the inner expression first without regard to the precedence rules. 

I think the problem here is that most precedence charts for Ruby don't show that there is a step between {} and do...end, and this assignment may also skip that step. That step is the binding of an argument to a method and the method name - in this case, p and the return value of array.map (p is, of course, a method). This binding is slightly tighter than the binding between a method call and a do...end block, so array.map gets executed first, then the return value and the block get passed to p as separate arguments.

## Order of Precedence and Evaluation of Expressions

Precedence is a way of inserting implicit paratheses in a complicated expression.
It doesnt change what gets evaluated first- Evaluation is always left to right, paratheses get evaluated as a unit.

Order of precdence always matters. left to right evaluation still happens as well.
Precedence comes into play before evaluation actually begins.
For each operator the order of precedence determines what sub expression will be left operand and which will be right operand. what gets passed to each operator.

1. First parse the expression into which subexpression will be the operands for each operator based on precedence.

2. Once Ruby has grouped everything so it understands what subexpressions go with which operators, it starts processing things left to right.

3. 

https://launchschool.com/posts/a508a7df#comment-81783

The wording in that assignment could be better.

Try to think of precedence as a way to insert implicit parentheses in a complicated expression. Don't think of it as changing what gets evaluated first - evaluation is always left to right, but parenthesized expressions get evaluated as a unit, even implicit parentheses generated based on precedence.

The order of precedence always matters, but the left-to-right evaluation still happens as well. Where the precedence comes into play is before evaluation actually begins. For each operator, the order of precedence determines what sub-expression will be the left operand and which will be the right operand. In:

`x || y && 3/0`

we have 3 operators: `||`, `&&`, and `/`: `/` has higher precedence than both && and ||, and && has higher precedence than `||`. Since `/` has the highest precedence, ruby initially parses this expression as:

`x || y && (3/0)`

Putting parentheses around 3/0 treats 3/0 as a subexpression that will be used as the righthand operand of &&. It does not tell Ruby "evaluate me first" - it says, when I try to evaluate the && operator, treat 3/0 as the righthand operand.

Next, since && has higher precedence than ||, the parsing groups y with (3/0):

`x || (y && (3/0))`

Again, the parens aren't saying "evaluate me first" - they're telling ruby to use the subexpression y && (3/0) as the righthand operand for ||.

Once Ruby has grouped everything so it understands what subexpressions go with which operators, it starts processing things left to right. Therefore, with this expression, it evaluates x first. If x is truthy, short circuiting allows ruby to stop evaluating at this point - the right hand side is simply not needed. If x is falsy, then it has to evaluate y && (3/0). This time, if y is falsy, there's no need to evaluate 3/0 due to short-circuiting. However, if y is truthy, then it evaluates 3/0. Thus, 3/0 only gets evaluated when x is falsy and y is truthy.

Let's change the expression to:

`y && 3/0 || x`

This time, the precedence grouping ends up looking like this:

`(y && (3/0)) || x`

Once again, we go left-to-right. The first thing that needs to be evaluasted is y && (3/0) since it is in parentheses. However, if y is falsy, 3/0 never gets evaluated, but evaluated continues by evaluating x and then applying the || operator. If y is truthy, 3/0 gets evaluated and an error occurs and everything stops.

tl;dr - the precedence determines what operands get passed to each operator, not what gets evaluated first in the overall expression. Evaluation occurs left-to-right, with the consideration that parentheses (either explicit or implied by precedence) group operations together into subexpressions that must be evaluated as a unit.

**always use parentheses when mixing operators.**
