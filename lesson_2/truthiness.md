# Truthiness

## Why is ability to express "true" or "false" important?


## What is a boolean object?


## How are booleans represented in Ruby?


## What classes do the booleans true and false belong to?


## What methods can you call on true and false objects?


## What are the different uses of boolean objects?


## In an if conditional, what should the test expression evaluate to?

```ruby
num = 5

if num < 5
  puts "small number"
else
  puts "large number"
end

```

_*The above if-else conditional outputs "small number" because the expression `num < 5` evaluates to `true`*_

**The if-else conditional executes the if branch if the test expression provided evaluates to the true object. And a truthy value evaluates a true in an if conditional**

## How can you use a method call in an if conditional?

```ruby
puts "its true" if some_method_call
```

The above will output "it's true!" if some_method_call returns a truthy value.


## When using a method call as a conditional expression, what is preffered that the method call should return?



### Extracts from the course and book on the topic of Truthiness

#### Ruby Book

Notice that after if and elsif we have to put an expression that evaluates to a boolean value: true or false

In Ruby, every expression evaluates to true when used in flow control, except for false and nil.

#### Coding Tips

Why do we say "truthiness" instead of just true or false? The reason is because in Ruby, like most programming languages,

**more than just true evaluates to true in a conditional.**

In Ruby everything is truthy except `false` and `nil`

Because of this, we don't have to compare an expression to true or false, and can rely on the expression's "truthiness" directly.


