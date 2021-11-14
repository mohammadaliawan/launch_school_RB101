=begin
Write a method that takes two arguments, a string and a positive integer, and
prints the string as many times as the integer indicates.

repeat('Hello', 3)

Output:
Hello
Hello
Hello

** Problem Requirements **

Input: two arguments, a string and a positive integer
Output/return: print the string

**Restate**
- write a method that takes two arguments
- string and positive integer
- print the string as many times as the integer

**Rules / Boundaries (Check test cases)**

**Explicit**
- write a method that takes two arguments
- string and positive integer
- print the string as many times as the integer

**Implicit**
- first argument string, second argument integer
- output on seperate lines
- no qoutation marks in the output => use puts

** Terms **

**Questions**
- integer == 0 => Output Nothing
- str = "" => output int empty lines

** Data Structures**

- input: string and integer
- Output: string
- Intermediate:
- Storage:


**Algorithm**
- given a string and a positive integer
- Iterate from 0 to int - 1
  - print the string on each iteration using puts

** Implementation details **
- Given str and int
- SET counter = 0
- WHILE counter < int
  - PRINT str
  - counter = counter + 1
=end

def repeat(str, int)
  counter = 0
  while counter < int
    p str
    counter += 1
  end
end

repeat('Hello', 3)
repeat("", 4)
repeat("Hello", 0)
repeat("", 0)
