# Common Algorithms

## Remove all non alpha numeric chars

`string.delete("^A-Za-z0-9")`

## Get all the non alphanumeric chars

```ruby
str.delete(" A-Za-z0-9")
str.count(" A-Za-z0-9")

```

## is a palindrome

```ruby
str == str.reverse
ary == ary.reverse
```

- You may have began coding a little too early. Don't move on to the implementation until you know how to solve 'the hard part' of the problem.
- Thoroughly reviewing the problem and test cases can help you to identify the hard part of the problem, as well as its general shape.
- You could avoid some confusion by naming variables more descriptively.
- You can confirm that your code is working the way you expect it to by testing early and often.
- Ideally, we are looking for you to know exactly what each expression will return in your code. For example, in the first problem, you likely would have arrived at a working solution sooner if you had known that your last call to `select` was returning an array of characters whose counts in the original string were three: exactly what the final return value of your method needed to be.
