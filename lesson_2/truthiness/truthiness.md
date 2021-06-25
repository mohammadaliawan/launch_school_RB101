# Truthiness

## Why is ability to express "true" or "false" important?

It helps us build conditonal logic and understand the state of an object or expression

## What is a boolean object?

The notion of whether a value is "true" or "false" is captured in a boolean data type. A boolean is an object whose only purpose is to convey whether it is "true" or "false".

## How are booleans represented in Ruby?

Booleans are represented by the `true` and the `false` objects

## What classes do the booleans true and false belong to?

`true` => TrueClass
`false` => FlaseClass

## What are the different uses of boolean objects?

They can be used in conditonals

## In an if conditional, what should the test expression evaluate to?

We usually evaluate an expression or method call in a conditional. What ever the expression it should evaluate to `true` or `false`.

```ruby
num = 5

if num < 5
  puts "small number"
else
  puts "large number"
end

```

_*The above if-else conditional outputs "small number" because the expression `num < 5` evaluates to `true`*_

**The if-else conditional executes the if branch if the test expression provided evaluates to the true object or a truthy object**

## How can you use a method call in an if conditional?

```ruby
puts "its true" if some_method_call
```

The above will output "it's true!" if some_method_call returns a truthy value.


## When using a method call as a conditional expression, what is preffered that the method call should return?

It is preferred that it should return a boolean object i.e `true` or `false`

## What do logical operators && and || return?

Either a truthy or falsey value when evaluating two expressions.

## What does the && operator return?

&&: will return true only if both expressions being evaluated are true.

## If more than two expression are chained to &&, what will ruby return?

you can chain as many expressions as you'd like with &&, and it will be evaluated left to right.
If any expression is false, the entire && chain will return false.

## What does the || operator return?

||:will return true if either one of the evaluated objects is true. It's less strict than the && operator.

## What is short circuit evaluation?

Short Circuiting: the && and || operators exhibit a behavior called short circuiting, which means it will stop evaluating expressions once it can guarantee the return value.

## When does && short cicuit?

the && will short circuit when it encounters the first false expression.

## When does || short circuit?

the || will short circuit when it encounters the first true expression.

These expressions return the first value that determines the truth or falsehood of the entire expression.  If Ruby had to look at every part of the expression, it will return the last value.

The fact that the Ruby interpreter only needs to evaluate part of the expression is why this is called "short-circuit evaluation."

## Truthiness

Truthiness means that ruby considers more than the `true` object to be truthy.

Infact, ruby considers everything to be truthy except the objects `false` and `nil`.

This means that we can use any expression in a conditional, or with logical operators, and as long as it doesn't evaluate to false or nil, it is considered true.

Note that an expression that Ruby considers true is not the same as the `true` object. This is what "truthiness" means.

Ruby considers any integer to be "truthy". It does not, however, mean that the num variable from above is equal to `true`:

> Everything in Ruby is considered "truthy" except for false and nil.




















### Extracts from the course and book on the topic of Truthiness

#### Ruby Book

Notice that after if and elsif we have to put an expression that evaluates to a boolean value: true or false

In Ruby, every expression evaluates to true when used in flow control, except for false and nil.

#### Coding Tips

Why do we say "truthiness" instead of just true or false? The reason is because in Ruby, like most programming languages,

**more than just true evaluates to true in a conditional.**

In Ruby everything is truthy except `false` and `nil`

Because of this, we don't have to compare an expression to true or false, and can rely on the expression's "truthiness" directly.

## The meaning of truthy and falsey (https://gist.github.com/jfarmer/2647362)

Many programming languages, including Ruby, have native boolean (true and false) data types. In Ruby they're called true and false. In Python, for example, they're written as True and False.

But oftentimes we want to use a non-boolean value (integers, strings, arrays, etc.) in a boolean context (if statement, &&, ||, etc.). So someone designing a language has to decide what values count as "true" and what count as "false."

**A non-boolean value that counts as true is called "truthy," and a non-boolean value that counts as false is called "falsey."**

Remember: only true and false are booleans. nil is not a boolean. 0 is not a boolean. [1,2,3] is not a boolean. The string "apple" is not a boolean. **When used in a context where a boolean is expected, Ruby evaluates them as boolean.**

## Summary of article:

Ruby, like many programming languages, has a boolean (true/false) data type. In Ruby we write "true" and "false." For convenience, though, we often want to evaluate non-boolean values (integers, strings, etc.) in a boolean context (if, &&, ||, etc.).

Ruby has to decide whether these values count as true or false. If the value isn't literally "true" but evaluates as true, we call it "truthy." Likewise, if the value isn't literally "false" but evaluates as false, we call it "falsey."

For example, 1 is "truthy." One might also say "1 evaluates to true."

In Ruby only nil and false are falsey. Everything else is truthy.

Logical (boolean) operators like &&, ||, and ! are methods. That means they return something. What do they return?

When you write a boolean expression like

```ruby
4 && 5 # This returns 5
nil && true # This returns nil
true && nil # This returns nil
true || nil # This returns true
nil || "" # This returns ""
we get a new truthy or falsey value.

```
