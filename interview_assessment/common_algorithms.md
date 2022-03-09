

**Remove vowels**

```ruby
def remove_vowels(str)
  str.map do |word|
    word.gsub(/[aeiouAEIOU]/,'')
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

## String Methods

### String Multiplication
  str * integer → new_str
  Copy — Returns a new String containing integer copies of the string. 
  integer must be greater than or equal to 0.

### String Concatenation
  str + other_str → new_str
  Concatenation—Returns a new String containing other_str concatenated to str.

### String Appending
  


### String Comparison
  


### String Equality
  str == obj → true or false
  Equality—Returns whether str == obj
  returns similarly to String#eql?, comparing length and content.

### Regex Match
  str =~ obj → integer or nil
  Match—If obj is a Regexp, use it as a pattern to match against str,and returns the position the match starts, or nil if there is no match. 

### String Substring - Element Reference
  str[index] → new_str or nil



  str[start, length] → new_str or nil
  str[range] → new_str or nil

### String Assignment - Element Assignment
  str[integer] = new_str
  str[integer, integer] = new_str
  str[range] = aString

### String Case Insensitive Comparison
  casecmp?(other_str) → true, false, or nil
  casecmp(other_str) → -1, 0, +1, or nil

### Centering
  center(width, padstr=' ') → new_str
  Centers str in width. If width is greater than the length of str, returns a new String of length width with str centered and padded with padstr; otherwise, returns str.

### String Concatenation - Appending Multiple
  concat(obj1, obj2, ...) → str


  Concatenates the given object(s) to str. If an object is an Integer, it is considered a codepoint and converted to a character before concatenation.

### Counting Characters
  count([other_str]+) → integer

### Delete Characters
  delete([other_str]+) → new_str
  Returns a copy of str with all characters in the intersection of its arguments deleted. Uses the same rules for building the set of characters as String#count.

### Ends With?
  end_with?([suffixes]+) → true or false
  Returns true if str ends with one of the suffixes given.

### Global Substitution - Non Mutating
  gsub(pattern, replacement) → new_str
  gsub(pattern, hash) → new_str
  Returns a copy of str with all occurrences of pattern substituted for the second argument. 

### Global Substitution - Mutating
  gsub!(pattern, replacement) → str or nil
  gsub!(pattern, hash) → str or nil
  Performs the substitutions of String#gsub in place, returning str, or nil if no substitutions were performed.

### Includes the Substring?
  include? other_str → true or false
  Returns true if str contains the given string or character.

### Find the index of a substring
  index(substring [, offset]) → integer or nil
  index(regexp [, offset]) → integer or nil
  Returns the index of the first occurrence of the given substring or pattern (regexp) in str. Returns nil if not found. If the second parameter is present, it specifies the position in the string to begin the search.

### Insert(index, other_str) -> str
  insert(index, other_str) → str
  Inserts other_str before the character at the given index, modifying str. 
  Inserts other_str before the character at the given index, modifying str. Negative indices count from the end of the string, and insert after the given character. The intent is insert aString so that it starts at the given index.

### left justify
  ljust(integer, padstr='') → new_str
  If integer is greater than the length of str, returns a new String of length integer with str left justified and padded with padstr; otherwise, returns str.

### left strip
  lstrip → new_str
  Returns a copy of the receiver with leading whitespace removed

### Matching
  match(pattern) → matchdata or nil

### match?(pattern) → true or false

### partition
  partition(sep) → [head, sep, tail]
  partition(regexp) → [head, match, tail]

### Prepend
  prepend(other_str1, other_str2, ...) → str
  Prepend—Prepend the given strings to str.

### Reverse string - Non mutating
  reverse → new_str
  Returns a new string with the characters from str in reverse order.

### Index of the last occurrance of substring
  rindex(substring [, integer]) → integer or nil
  rindex(regexp [, integer]) → integer or nil
  Returns the index of the last occurrence of the given substring or pattern (regexp) in str. Returns nil if not found.

### Right Justify
  rjust(integer, padstr='') → new_str
  If integer is greater than the length of str, returns a new String of length integer with str right justified and padded with padstr


### Remove trailing white space
  rstrip → new_str
  Returns a copy of the receiver with trailing whitespace removed.

### Strip white space
  strip → new_str
  Returns a copy of the receiver with leading and trailing whitespace removed.

### Substitute
  sub(pattern, replacement) → new_str
  Returns a copy of str with the first occurrence of pattern replaced by the second argument.

### Scan the string for a match
  scan(pattern) → array
  scan(pattern) {|match, ...| block } → str
  Both forms iterate through str, matching the pattern (which may be a Regexp or a String). For each match, a result is generated and either added to the result array or passed to the block

### Split a string into substrings
  split(pattern=nil, [limit]) → an_array
  split(pattern=nil, [limit]) {|sub| block } → str
  split -> an array with str split on white space

### Replace multiple chars by one char
  squeeze([other_str]) → new_str
  Builds a set of characters from the other_str parameter(s) using the procedure described for String#count. Returns a new string where runs of the same character that occur in this set are replaced by a single character. If no arguments are given, all runs of identical characters are replaced by a single character.

### Start with
  start_with?([prefixes]+) → true or false
  Returns true if str starts with one of the prefixes given. Each of the prefixes should be a String or a Regexp.

### Swap Case
  swapcase → new_strclick to toggle source
  swapcase([options]) → new_str
  

  Returns a copy of str with uppercase alphabetic characters converted to lowercase and lowercase characters converted to uppercase.


### Translate
  tr(from_str, to_str) => new_str
  Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str. If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.
  Both strings may use the c1-c2 notation to denote ranges of characters, and from_str may start with a ^, which denotes all characters except those listed.

### Translate - Mutating
  tr!(from_str, to_str) → str or nilclick to toggle source
  Translates str in place, using the same rules as String#tr. Returns str, or nil if no changes were made.

## Arrays Method

### Intersection
  ary & other_ary → new_ary
  Set Intersection — Returns a new array containing unique elements common to the two arrays

### Array Multiplication
  ary * int → new_ary
  ary * str → new_string
  Repetition — With a String argument, equivalent to ary.join(str).
  Otherwise, returns a new array built by concatenating the int copies of self.

