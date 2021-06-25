Truthiness article

## true and false vs. "truthy" and "falsey" (or "falsy") in Ruby, Python, and JavaScript

Many programming languages, including Ruby, have native boolean (true and false) data types.  In Ruby they're called `true` and `false`.  In Python, for example, they're written as `True` and `False`.  But oftentimes we want to use a non-boolean value (integers, strings, arrays, etc.) in a boolean context (if statement, &&, ||, etc.).

This outlines how this works in Ruby, with some basic examples from Python and JavaScript, too.  The idea is much more general than any of these specific languages, though.  It's really a question of how the people designing a programming language wants booleans and conditionals to work.

If you want to use or share this material, please see [the license file](#file-02-license-md), below.

### Update

Hi!  I'm Jesse.  I co-founded [Dev Bootcamp](http://devbootcamp.com) in 2012 with Shereef Bishay and Dave Hoover, but left recently to work on a new project.  If you're reading this, you're probably interested in learning how to program.  I'm working on something new that might just be up your alley.  Shoot me an email at jesse@codeunion.io if you're interested.

I've since gone on to found [CodeUnion](http://codeunion.io), a place to learn new technical skills from amazing teachers without putting your life on hold.

### Back To Our Regularly-Scheduled Programming

Many programming languages, including Ruby, have native boolean (true and false) data types.  In Ruby they're called `true` and `false`.  In Python, for example, they're written as `True` and `False`.

* http://en.wikipedia.org/wiki/Boolean_data_type

But oftentimes we want to use a non-boolean value (integers, strings, arrays, etc.) in a boolean context (if statement, &&, ||, etc.).  So someone designing a language has to decide what values count as "true" and what count as "false."  A non-boolean value that counts as true is called "truthy," and a non-boolean value that counts as false is called "falsey."

* http://en.wikipedia.org/wiki/Logical_connective
* http://en.wikipedia.org/wiki/Logical_conjunction

*Remember*: only true and false are booleans.  nil is not a boolean.  0 is not a boolean.  [1,2,3] is not a boolean.  The string "apple" is not a boolean.  When used in a context where a boolean is expected, Ruby evaluates them as boolean.

*Also remember*: Sometimes you'll see "falsey" spelled as "falsy."  Either way, it's the same concept.  We're going to write it as falsey.

Run this code and you'll see.
```ruby
if true
  puts "true is truthy, duh!"
else
  puts "true is falsey, wtf!"
end

if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

if 0
  puts "0 is truthy"
else
  puts "0 is falsey"
end
```

## What's truthy and falsey in Ruby?
Programming languages are software, too! That means the people who built Ruby had to decide what is truthy and what is falsey. Different languages make different decisions.

http://raflabs.com/blogs/silence-is-foo/2010/08/12/nil-true-false-ruby/

In Ruby only false and nil are falsey.  Everything else is truthy (yes, even 0 is truthy).

In some languages, like C and Python, 0 counts as false.  In fact, in Python, empty arrays, strings, and hashes all count as false.  In JavaScript, empty strings count as false, but empty arrays count as true.

Some languages (so-called "strictly typed" languages) go to the other extreme.  true evaluates to true, false evaluates to false, and anything else will cause the compiler or interpreter to yell at you: "You can't evaluate a non-boolean value as a boolean!"

The point is only that different languages can decide what counts as true and what counts as false.  There's nothing inherent in an empty string, for example, that make false. The various choices could be reasonable or unreasonable to varying degrees &mdash; it'd be strange to ever see the integer 1 or the string "apples" acting as false, for example &mdash; but ultimately it's a convention of the programming language.

Here's a script to play around with.

```ruby
def truthy_or_falsey value
  # We don't know what `value` is
  # It could be true, false, or a non-boolean value like 1, "", etc.
  # Ruby only cares about whether something is truthy or falsey, though.
  # Let's go look!

  if value
    # What does inspect do here?
    # Remove it and see how the output changes.
    puts "#{value.inspect} is truthy"
    
    # Instead of calling value.inspect, call value.to_s
    # How does the output of that look?
  else
    puts "#{value.inspect} is falsey" 
  end
end

[true, false, Object, 0, 1, nil, true, false, "", [1, 2, 3], {}].each do |value|
  truthy_or_falsey(value)
end
```

## Boolean (logical) operators
In Ruby there are three main boolean operators: ! ("not"), && ("and"), and || ("or").  These are really methods, which means they have return values. So what do they return?

Let's rewrite them as methods.

```ruby
def and_op(a,b)
  a && b
end

def or_op(a,b)
  a || b
end

def not_op(a)
  !a
end

def print_and_op(a,b)
  return_value = and_op(a,b)
  if return_value
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

def print_or_op(a,b)
  return_value = or_op(a,b)
  if return_value
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

def print_not_op(a)
  return_value = not_op(a)
  if return_value
    puts "!#{a.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "!#{a.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

# Let's see how these guys work..
print_and_op(true,1)
print_and_op(true,Object)
print_and_op(true,"")
print_and_op(false, 1)
print_and_op(false, Object)
print_and_op(false, "")
print_and_op(false, false)
print_and_op(nil, false)
print_and_op(false, nil)
print_and_op(false, true)
print_and_op(nil, true)

# Now play around it with || and ! using print_or_op and print_not_op
# Can you come up with a simple rule for what && returns?
# How about || and ! ?

print_or_op(true,1)
print_or_op(true,Object)
print_or_op(true,"")
print_or_op(false, 1)
print_or_op(false, Object)
print_or_op(false, "")
print_or_op(false, false)
print_or_op(nil, false)
print_or_op(false, nil)
print_or_op(false, true)
print_or_op(nil, true)

print_not_op(1)
print_not_op(Object)
print_not_op("")
print_not_op(true)
print_not_op(false)
print_not_op(nil)
```

It's totally fine if you can't answer the questions above.  Here's some additional reading that might help you understand what's going on.

http://www.omnifarious.org/~eljay/info_ttable.html

## Short-circuit evaluation

In Ruby, expressions involving boolean operators use what's called "short-circuit evaluation."  Imagine you're the computer and you're reading a program from left to right.  You see the expression "true || b", where b is a variable.

You can evaluate this expression without ever looking at b, because "true || X" is always true no matter what X is (even if X is false).  The same goes for expressions like "1 || b."  1 evaluates to true, so Ruby never has to look at b.  The fact that the Ruby interpreter only needs to evaluate part of the expression is why this is called "short-circuit evaluation."

&& works similarly.  "false && b" is always false, so Ruby doesn't care what b is.

These expressions return the first value that determines the truth or falsehood of the entire expression.  If Ruby had to look at every part of the expression, it will return the last value.

So "1 || false" returns 1, but "1 && false" returns false and "1 && nil" returns nil.

http://en.wikipedia.org/wiki/Short-circuit_evaluation

## Conclusion
Ruby, like many programming languages, has a boolean (true/false) data type.  In Ruby we write "true" and "false."  For convenience, though, we often want to evaluate non-boolean values (integers, strings, etc.) in a boolean context (if, &&, ||, etc.).

Ruby has to decide whether these values count as true or false.  If the value isn't literally "true" but evaluates as true, we call it "truthy."  Likewise, if the value isn't literally "false" but evaluates as false, we call it "falsey."

For example, 1 is "truthy."  One might also say "1 evaluates to true."

In Ruby only nil and false are falsey.  Everything else is truthy.

Logical (boolean) operators like &&, ||, and ! are methods.  That means they return something.  What do they return?

When you write a boolean expression like

```ruby
4 && 5 # This returns 5
nil && true # This returns nil
true && nil # This returns nil
true || nil # This returns true
nil || "" # This returns ""
```
we get a new truthy or falsey value.

What happens if we use an expression like 1 && 2 in a context other than if, else, &&, ||, etc.?

Remember, these expressions are going to return (as a method would) one of the values inside the expression.

```ruby
hash = {1 => 'foo', 2 => 'bar'}
puts "hash[1] is #{hash[1].inspect}"
puts "hash[2] is #{hash[2].inspect}"
puts "hash[1 && 2] is #{hash[1 && 2].inspect} because 1 && 2 evaluates to 2 and hash[2] is #{hash[2].inspect}"