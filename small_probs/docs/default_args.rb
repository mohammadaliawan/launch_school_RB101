#default_args.rb

def my_method(a, b, c = 3, d = 4, e, f)
  p [a, b, c, d, e, f]
end

my_method(1,2,"do",10,11) #=> [1,2,"do",4,10,11]

# The documentation shows that positional 
# arguments are filled out first, then the 
# default arguments are set with any values 
# supplied, and, finally, default values are 
# applied to anything remaining.