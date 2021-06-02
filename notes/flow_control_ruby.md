# Flow Control

## What is Flow Control? What is it used for?

Flow Control or Control Flow is about controlling the flow of execution of a 
program. It gives our program the flexibility to make decisions about which path to follow. And these decision are made based on certain conditions. 

## What are conditionals? How are they formed?

- Condtionals are a way of controlling the program flow. They are like forks in the road. 
- They are formed using `if` statements and comparison and logical operators
`(<,>,<=,>=,==,!=.&&,||)`
- They are basic logical structures.

## `if-else` statements.How do they work? What are the different parts?

An `if` statement has two parts. A "test" and a "then" part. If the "test" part evaluates to true, then the "then" expression is evaluated. If "test" evaluates to false, then the "then" part is not evaluated.

## When is the `else` expression evaluated?

The else expression is evaluated if the "test" evalautes to false. And if there are no matching conditions.

## When is an `elsif` used? and when is an `elsif` expression evaluated?

When we want to test more than one number of conditions.We can add an arbitrary number of tests to an if statement using `elsif`.

An `elsif` executes when all the tests above the elsif are false.

## When is an if expression complete?

**Once a condition matches either the if condition or any elsif condition, the if expression is complete. No further tests will be performed.**

The first condition that matches is executed. 

## What is the return value of an if expression?

Returns the evaluated result of the branch whose condition evaluates to true, or nil if there is no such branch

## How is modifier if and unless written?

`puts "Hello World" if x == 3`

`puts "Hello World" unless x == 3`

## How do unless expressions work?

`unless` statments are the opposite of if statements.

If the test is false, the “then” expression is executed.

## What is the return value of an unless expression?

The result value of an unless expression is the last value executed in the expression.

## Can unless expressions have an else condition.

Yes. 

## What are these <,>,>= called? What do they return?

Comparison operators. Always return a boolean value.

## meaning of `<`

The 'less than' symbol. Anything to the left of the symbol has a lower value than anything to the right.

## meaning of `>`

The 'greater than' symbol. Anything to the left of the symbol has a greator value than anything to the right.

## when you are comparing for equality == you must be comparing two of the same type or you will always get a false boolean value.

## Meaning of `&&` operator

`&&` the 'and' operator- Expressions to the left and to the right of this operator have to be **both** true for the entire expression to be evaluated to true.

## If you have multiple && operators in an expression, When will you have a false return value? And when will it result in a true return value?

If even a single condition is false, the whole expression will return false.
All of them have to be true for the entire expression to return true.

## Meaning of `||` operator?

`||`- the "or" operator. Either the expression to the left has to be true, or the expression to the right has to be true for the entire expression to be evaluated to true.


## If you have multiple || operators in an expression, When will you have a false return value? And when will it result in a true return value?

If even a single condition is true, the whole expression will return true.
All of them have to be false for the entire expression to return false.

## What is the Order of Precedence for comparison and logical operators?

Comparision(<,>,<=,>=)
Equality(==,!=)
Logical AND (&&)
Logical OR (||)

## How does a `case` expression work? How many ways are there to use a case expression? What are they?

Comparing an object against multiple patterns:
- first defining a case and 
- then evaluating the value of the case and 
- what operation to complete if that case is true.

```ruby
case object
when o1
  #do this
when o2
  #do this
else
  #do this
end
```

OR like an if-elsif expression with no case defined


## When is a case expression complete?

A case expression is complete when a condition matches. 
**The first `when` that matches is executed and all other matches are ignored.**

OR when the `else` expression is executed.

## When is the else expression executed in a case statement?

If no matches are found.

## How are multiple conditions placed on the same when and what does it mean?

```ruby
case a
when b, c, d
  #do this
end
```

Each condition is tried in turn. If either returns true the when will be executed.

## How to use when and the then expressions on a single line?

```ruby
case a
when 1, 2 then puts "a is one or 2"
else           puts "I dont know."
end
```



