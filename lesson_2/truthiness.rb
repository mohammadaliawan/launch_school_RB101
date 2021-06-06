# def truthy_or_falsey value
#   # We don't know what `value` is
#   # It could be true, false, or a non-boolean value like 1, "", etc.
#   # Ruby only cares about whether something is truthy or falsey, though.
#   # Let's go look!

#   if value
#     # What does inspect do here?
#     # Remove it and see how the output changes.
#     puts "#{value.inspect} is truthy"

#     # Instead of calling value.inspect, call value.to_s
#     # How does the output of that look?
#   else
#     puts "#{value.inspect} is falsey"
#   end
# end

# [true, false, Object, 0, 1, nil, true, false, "", [1, 2, 3], {}].each do |value|
#   truthy_or_falsey(value)
# end

def and_op(a,b)
  a && b
end

def or_op(a,b)
  a || b
end

def not_op(a)
  !a
end

def print_and_op(a,b)
  return_value = and_op(a,b)
  if return_value
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "#{a.inspect} && #{b.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

def print_or_op(a,b)
  return_value = or_op(a,b)
  if return_value
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "#{a.inspect} || #{b.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

def print_not_op(a)
  return_value = not_op(a)
  if return_value
    puts "!#{a.inspect} returns #{return_value.inspect}, which is truthy"
  else
    puts "!#{a.inspect} returns #{return_value.inspect}, which is falsey"
  end
end

# Let's see how these guys work..
print_and_op(true,1)
print_and_op(true,Object)
print_and_op(true,"")
print_and_op(false, 1)
print_and_op(false, Object)
print_and_op(false, "")
print_and_op(false, false)
print_and_op(nil, false)
print_and_op(false, nil)
print_and_op(false, true)
print_and_op(nil, true)

# Now play around it with || and ! using print_or_op and print_not_op
# Can you come up with a simple rule for what && returns?
# How about || and ! ?

print_or_op(true,1)
print_or_op(true,Object)
print_or_op(true,"")
print_or_op(false, 1)
print_or_op(false, Object)
print_or_op(false, "")
print_or_op(false, false)
print_or_op(nil, false)
print_or_op(false, nil)
print_or_op(false, true)
print_or_op(nil, true)

print_not_op(1)
print_not_op(Object)
print_not_op("")
print_not_op(true)
print_not_op(false)
print_not_op(nil)

# true && 1 returns 1, which is truthy
# true && Object returns Object, which is truthy
# true && "" returns "", which is truthy
# false && 1 returns false, which is falsey
# false && Object returns false, which is falsey
# false && "" returns false, which is falsey
# false && false returns false, which is falsey
# nil && false returns nil, which is falsey
# false && nil returns false, which is falsey
# false && true returns false, which is falsey
# nil && true returns nil, which is falsey
# true || 1 returns true, which is truthy
# true || Object returns true, which is truthy
# true || "" returns true, which is truthy
# false || 1 returns 1, which is truthy
# false || Object returns Object, which is truthy
# false || "" returns "", which is truthy
# false || false returns false, which is falsey
# nil || false returns false, which is falsey
# false || nil returns nil, which is falsey
# false || true returns true, which is truthy
# nil || true returns true, which is truthy
# !1 returns false, which is falsey
# !Object returns false, which is falsey
# !"" returns false, which is falsey
# !true returns false, which is falsey
# !false returns true, which is truthy
# !nil returns true, which is truthy