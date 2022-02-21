# Methods to rememeber

## Strings

**String Multiplication**

str * integer → new_str

Copy — Returns a new String containing integer copies of the receiver. integer must be greater than or equal to 0.

**String Concatenation**

str + other_str → new_str

Concatenation—Returns a new String containing other_str concatenated to str

**String Append**

str << obj → str
str << integer → str

Appends the given object to str. If the object is an Integer, it is considered a codepoint and converted to a character before being appended.

concat(obj1, obj2, ...) → str

- Concatenates the given object(s) to str
- all the arguments are concatenated in order

**String Comparison**

string <=> other_string → -1, 0, +1, or nil

- Comparison—Returns -1, 0, +1, or nil depending on whether string is less than, equal to, or greater than other_string.

- nil is returned if the two values are incomparable.

- If the strings are of different lengths, and the strings are equal when compared up to the shortest length, then the longer string is considered greater than the shorter one.

**String Equality**

str == obj → true or false

- Equality—Returns whether str == obj, similar to Object#==
- comparing length and content

**String Matching**

str =~ obj → integer or nil



## Arrays

**Permutations**

permutation {|p| block} → ary
permutation → Enumerator
permutation(n) {|p| block} → ary

When invoked with a block, yield all permutations of length n of the elements of the array, then return the array itself.

a.permutation.to_a    #=> [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

**Find Index**

index(obj) → int or nilclick to toggle source
index {|item| block} → int or nil