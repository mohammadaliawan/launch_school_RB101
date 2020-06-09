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

- Don't display something to the output and return a meaningful value. Ruby methods always return something, but if you are displaying something with the method then the return value shouldnt be the intent of the method.

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