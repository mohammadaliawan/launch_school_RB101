=begin

Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements that, when combined with adjoining spaces,
will produce a person's name. The hash will contain two keys, :title and :occupation,
and the appropriate values. Your method should return a greeting that uses the person's full name,
and mentions the person's title and occupation.

Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : 2 argu, 1 array, 1 hash
**Output** : return a string containing the person' full name, title, occupation

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes two arguments
- 1 array , 1 hash : 1st array, 2nd hash
- array: 2 or more elements
  - combine with spaces to get the person's name
- hash: two keys, :title, :occupation and vales
- return a greeting string containing the person's fullname, title and occupation

**Implicit Requirements/Rules/Boundaries**
- title and occupation should occur consectively first title and then occupation
- the elements provided in the array containing the name: order of elements should remain the same in the
return string


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: ['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }
- Output: Hello, #{name_ary.join(" ")}! Nice to have a #{hash[:title]} #{hash[:occupation]} around.


**Questions**
-


**Data Structures**
- input: array, hash
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array with the full name of the person and a hash containing title and occupation
- return a string greeting containing the person's full name, title, and occupation


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def greetings(name_ary, status)
  full_name = name_ary.join(" ")
  job = status.values.join(" ")
  
  "Hello, #{full_name}! Nice to have a #{job} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."