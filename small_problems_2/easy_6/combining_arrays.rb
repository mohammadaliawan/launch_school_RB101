combining_arrays.rb

Solution
Copy Code
def merge(array_1, array_2)
  array_1 | array_2
end
Discussion
In this exercise we utilize the Ruby method Array#|. This is a method that gives the set union of two arrays, so the result contains no duplicates. It works perfectly for our merge method. The union part of this method means that we get back all the elements that both array_1 and array_2 might contain, but without duplicates.

Further Exploration
How did you go about solving this one? Using this method for set union is convenient, but what if we didn't have it? There are certainly a few other ways to go about solving this exercise.