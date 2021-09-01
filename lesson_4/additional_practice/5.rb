flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


result = flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    break index
  end
end

p result

p flintstones.index {|name| name[0..1] == "Be"}