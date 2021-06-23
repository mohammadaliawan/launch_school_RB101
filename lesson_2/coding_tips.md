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

**Name your methods approprately i.e capture the intent of the method in the method name. And a method shoud do only one simple thing i.e. mutate or return a meaningful value or print something