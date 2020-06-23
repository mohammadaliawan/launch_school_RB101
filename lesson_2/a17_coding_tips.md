# Coding Tips

If you are serious about programming and you want to do it for years and maybe decades from today, then the hours you put into debugging little things are really going to help you retain knowledge for the long haul.

We want to encourage you to think about debugging from that perspective - embrace your burns and remember their lessons.

## Naming variables:

Variable names should capture the intent of the variable. What the variable will be storing. 

Dont try to capture possible user responses into the variable. User responses could change in the future.

>Variable name should be both descriptive and future proof.

Try to develop a habit of thinking about how to name things descriptively. It will help when developing large programs.

>In Ruby, make sure to use snake_case when naming everything, except classes which are CamelCase or constants, which are all UPPERCASE.

## Mutating Constants

CONSTANTS should be immutable. Donot change their values.

## Methods

Extracting code to a method is good.

But make sure that the method does one thing only and its responsibility is very limited.

This implies that the method should be short around 10 lines or so. 

### Writing good methods:

- **Don't display something to the output and return a meaningful value.** Ruby methods always return something, but if you are displaying something with the method then the return value shouldnt be the intent of the method.

- Decide whether the method should:
  - return a value with no side effects
  - OR perform side effects with no return value.
    The method name should reflect whether the method has side effects or not.
  - In Ruby we dont say `return_total`, it would be just `total`. Returning a value is implied. Further, we would not expect total to have side effects or print a value out.
  So a method named `total` we would expect it would return an integer that is the sum of some values. We would not expect it to mutate values passed to it. If it does then it becomes confusing. 

  - If you find yourself always looking at the method implementation, its a sign that the method is not named approprately or that its doing more than one simple thing.

### Methods should be at the same level of abstraction:

Methods take inputs and return some outputs. Ideally we should be able to just copy and paste a method into irb and test it. 

When working with a method, you should be able to mentally extract the method from the larger program and just work with the method in isolation. You should be able to feed this method inputs and expect it to give some outputs. 

When you have a method like this you can use it without thinking about its implementation.

Working this way helps compartmentalize your focus which is an important skill when working with large codebases.

If the methods in your program are correctly compartmentalized it makes programming much easier. That is why in good code all the methods are at the same layer of abstraction.

You shouldnt have to think about how a method is implmented when using a method. You should only think about its inputs and outputs.

### Method names should reflect mutation.

for example `update_total`. We can assume that this method will mutate the parameter passed to it. We wouldnt expect it to return a value.

The less you have to remember while using your methods the better. You should just be able to read the name and figure out what the method does without studying its implementation.

Use naming conventions in your code to signify which types of methods mutate vs which methods return values.

The more you have to think about the method, the harder it is to use it.

If it is performing a side effect and at the same time returning a value, this makes debugging and using the method very hard.

Build small methods that are like LEGO blocks: stand alone pieces of functionality that you can put togather to build larger structures.


If your methods are extremely convluted then that means that your logic is complex. 
Its a sign that you dont quite understand the problem well enough to break it down into well compartmentalized pieces.

As your understanding grows of the problem, refactor your code to reflect your growing clarity.

Methods are like black boxes.It takes some stuff (input) and returns some value (output) to you. They should be very contained and you should know what they do without having to look up the implementation. Coding will be much easier if you follow these general guidelines.

Remember that code not only has to work properly, but must also be read easily — both by others as well as your future self.

## Miscellaneous Tips:

- Don't prematurely exit the program. 

- All your methods should be at the same mental scope and not just randomly exit the program. 

- Your program should probably only have one exit point.

- Watch your indentation. 2 spaces, not tabs. 

- Name your methods from the perspective of using them later. That is, think about how you would like to invoke them. Think about the implementation later.

- Know when to use a do/while loop instead of a while loop

## Truthiness

> In Ruby everythign is truthy except nil and false.

The first time you are exposed to a new topic, it's going to be daunting. The second time, it's going to be easier and the third time even easier.