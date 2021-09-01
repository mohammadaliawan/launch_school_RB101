statement = "The Flintstones Rock"

result = {}

statement.chars.sort.each do |char|
  result[char] = statement.count(char)
end

p result