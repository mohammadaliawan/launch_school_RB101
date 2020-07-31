=begin
input: one string
Output: one string
Rules:
- Output the given string 10 times
- Each time on the next line
- Each time add one space to the right of the given string
- starting with 0 spaces.
- one line program

DS:
input: string
ouput: string

A:
given a string
counter = 0
- while counter <= 9
  - prepend the string with counter spaces
  - output the string
  - increment counter by 1
  end loop  
=end



string = "The Flintstones Rock!"

10.times { |num| puts(string.rjust(string.length + num))}

