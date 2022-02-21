

**Remove vowels**

```ruby
def remove_vowels(str)
  str.map do |word|
    word.gsub(/[aeiou, AEIOU]/,'')
  end
end
```

**Middle Character of a string**

```ruby
returns the middle character or characters of the argument

oddlength - middle char at index size/2
evenlength - middle char at index size/2 - 1

def center_of(str)
  str_size = str.size
  middle_index = str_size/2

  if str_size.odd?
    str[middle_index]
  else
    str[(middle_index - 1)..middle_index]
  end
end
```

**longest common prefix**

The longest common prefix possible would be of the length of the smallest string in length
- init a results string ""
- Compare each char at the same index in the strings for index from 0 to last index of smallest string , 
  if they are the same in all three, 
    store that char in a string,
  if they are not the same
    stop checking further chars
    return the result

```ruby
def common_prefix(words)
  smallest_string= words.min_by{|word| word.size}

  result = ""

  smallest_string.chars.each_with_index do |current_char, current_index|
    if words.all?{|word| word[current_index] == current_char}
      result << current_char
    else
      return result
    end
  end
  result
end
```

**longest_common_substring**

- find the shortest string in the array by length
- go through the possible substring of shortest string starting with the longest one 
- if current_substring appears in all of the strings
  - return current substring
  otherwise,
    go the next smaller substring

```ruby
def common_substring(words)
  shortest_string = words.min_by{|word| word.size}

  0.upto(shortest_string.size - 1) do |start_index|
    (shortest_string.size - 1).downto(start_index) do |end_index|
      current_substring = shortest_string[start_index..end_index]
      if words.all?{|word| word.include?(current_substring)}
        return current_substring
      end
    end
  end

  return ""
end

```