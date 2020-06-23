def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end