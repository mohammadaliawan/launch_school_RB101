# Deviations on Ruby Style

1. Always use parantheses for method invocations e.g. 
puts(), gets().chomp(). to differentiate them from local variables.

2. When using puts and gets, call these methods with their module: Kernel.puts() and Kernel.gets().
Doing this means that these are module methods in the Kernel module.
Remember: All methods come from somewhere