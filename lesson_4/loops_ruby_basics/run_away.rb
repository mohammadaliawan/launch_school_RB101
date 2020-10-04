loop do
  puts 'Just keep printing...'
  break
end

# If we insert a break after the puts method call, it will exit the loop immediately because 
# when break is executed it exits the nearest loop. break is used to leave a block early, so any code
# after the break keyword will not be executed.