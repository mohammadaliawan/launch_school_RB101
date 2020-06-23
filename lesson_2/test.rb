def method
  x = 1
  loop do
    puts x
    x += 1
    return "Hello" if x == 5
  end
end

p method