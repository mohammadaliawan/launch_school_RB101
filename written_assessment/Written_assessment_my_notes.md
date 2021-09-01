# RB109 - Written Assessment

## Methods - How they work

### Array#select


`select` performs selection based on the truthiness of the block's return value. In this case the return value will always be 'hi', which is a "truthy" value. Therefore select will return a new array containing all of the elements in the original array.

We are invoking the `Array#select` method on the array `[1,2,3]`. This method takes a
block as an argument and invokes the block once for each element of the calling array
`[1,2,3]` and the current element of the array is passed in as an argument to the block
and assigned to the block local variable `num` on each iteration.

The return value of the block is evaluated on each iteration. The return value of a block is
the evaluated result of the last line in the block.In this case the last line of the block
is the string `"hi"` which returns "hi". So the return value of the block is "hi" on each iteratin
 which is truthy.

 Array#select method selects those elements for which the return value of the block
 is truthy. Since in this case the return value is truthy for all elements of the array, all the elements
 of the array [1,2,3] are selected. The selected elements are returned in a new array by the method.
This new array is returned by the method. So the above select method returns a new array containing all
elements of the original array,