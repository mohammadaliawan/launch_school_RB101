# Deviations on Ruby Style

1. Always use parantheses for method invocations e.g. 
puts(), gets().chomp(). to differentiate them from local variables.

2. When using puts and gets, call these methods with their module: Kernel.puts() and Kernel.gets().
Doing this means that these are  methods in the Kernel module.
Remember: All methods come from somewhere

When we write Ruby code that's not in a class, we are working within an object called main, which is an instance of Object. The Kernel module is automatically loaded by Object, giving us access to all of its methods.