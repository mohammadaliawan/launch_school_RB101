def word_sizes(string)
  result = Hash.new{|hash,key| hash[key] = 1}

  string.split.each do |word|
    word_size = word.size

    if result.has_key?(word_size)
      result[word_size] += 1
    else
      result[word_size]
    end
  end

  result
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
