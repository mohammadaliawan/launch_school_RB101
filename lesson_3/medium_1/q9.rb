def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p rbar(foo) # bar("yes") --> "no"

# foo --> "yes"