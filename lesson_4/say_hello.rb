say_hello = true
iterator = 1
while say_hello
  puts 'Hello!'

  iterator += 1
  say_hello = false if iterator > 5
end