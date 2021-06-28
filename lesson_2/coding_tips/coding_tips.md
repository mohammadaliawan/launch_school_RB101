# Coding Tips

## Learning through dramatic experience

The only way to retain information is to pay with time. Debugging an issue for hours and hours will ensure that this problem gets burned into long term memory. You pay for those burns with time but they pay back with interest. If you spend 3 hours debugging, those hours are not wasted - you won't make that mistake again. We want to encourage you to think about debugging from that perspective - embrace your burns and remember their lessons.

## Naming Things

Choose descriptive variable and method names. Dont save on characters.

## Variable Names

Variables are named not for how they are set, but for what they actually store. Not indicating that in the name adds an additional mental check you must perform every time you see that variable name.

Typically, you don't want to hardcode possible response values into the variable name because of future uncertainty. Instead, try to capture the intent of the variable. For example, if we're trying to capture a response to determine if the game should loop again, a better name would be play_again. It's both descriptive as well as future-proof.

> In programming, naming things is very hard. Unfortunately, this problem isn't obvious when you write small programs, but it really impedes flow when you're working on larger programs. Try to develop a habit of thinking about how to name things descriptively.

One small exception to having descriptive variable names is when you have a very small block of code. It's less of a problem because the life or scope of that variable doesn't span more than a couple of lines.

> In Ruby, make sure to use snake_case when naming everything, except classes which are CamelCase or constants, which are all UPPERCASE

## Mutating Constants

Dont Mutate Constants.

> CONSTANTS should be immutable.

## Methods

Its good to extract code to a method. However, the method should do only one thing and its responsibility should be very limited.

### Guidlines for writing good methods:

- Dont display something to the output and return a meaningful value. Returning a value shouldnt be the intent of the method.

- Decide if the method should return a value with no side effects or perform side effects with no return value. The method name should reflect whether it has side effects or not

- In Ruby, we would not say `return_total`, it would be just `total` - returning a value is implied. Further, we would not expect a total method to have side effects or print a value out.

> **If you find yourself always looking at the method implementation, it's a sign that the method is not named appropriately, or that it's doing more than one simple thing.**

**Name your methods approprately i.e capture the intent of the method in the method name. And a method shoud do only one simple thing i.e. mutate or return a meaningful value or print something**

# Coding Tips 2

Use new lines to organize code.

Use some new lines to separate the different concerns in the code.

### Different parts of a program
variable initialization
user input and validation
using the variable

## Should a method return or display?

> Understand if a method returns a value, or has side effects, or both.

"side effects":  either displaying something to the output or mutating an object.

**Pay attention to method's side effects vs. return values**

if a method has both side effects and a meaningful return value, it's a red flag.

## Naming methods

One way to help yourself remember what each method does is to choose good method names. f you have some methods that output values, then preface those methods with display_ or print_

> If you find yourself constantly looking at a method's implementation every time you use it, it's a sign that the method needs to be improved.

All this goes back to one bit of advice: a method should do one thing, and be named appropriately. If you can treat a method as a "black box", then it's a well designed method.

You should be able to use a method called total and understand that it returns a value, and a method called print_total returns nil, without looking at the implementation of either. On the other hand, if there's a method called total!, then it's a sign that there is some side effect somewhere.

Don't write a method that mutates, outputs and returns a meaningful value. Make sure your methods just do one of those things.

## Don't mutate the caller during iteration

Don't mutate a collection while iterating through it.

You can, however, mutate the individual elements within that collection, just not the collection itself.

## Variable Shadowing

Variable shadowing occurs when you choose a local variable in an inner scope that shares the same name as an outer scope. It essentially prevents you from accessing the outer scope variable from an inner scope.

```ruby
name = 'johnson'

['kim', 'joe', 'sam'].each do |name|
  # uh-oh, we cannot access the outer scoped "name"!
  puts "#{name} #{name}"
end

```

The problem is that we've clobbered the outer scoped name variable. Within the each code block, the name variable represents the elements in the array - "kim", "joe", or "sam".

Note that the below is not variable shadowing:

```ruby
name = 'johnson'

['kim', 'joe', 'sam'].each do |fname|
  name = fname
end

```

The above code is accessing the outer scope name variable and re-assigning it. After the each block, the name will be set to "sam".

Be careful about choosing appropriate block variables (the thing between the | |) when working with blocks. If you pick a name that is identical to an outer scope variable, variable shadowing will prevent you from using the outer scope variable.

