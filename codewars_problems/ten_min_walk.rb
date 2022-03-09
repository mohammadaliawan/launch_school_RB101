=begin
-
everytime you press the button it sends you an array of one-letter strings representing directions 
to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block in a direction
and you know it takes you one minute to traverse one city block, 
so create a function that will return true if the walk the app gives you will take you 
exactly ten minutes (you don't want to be early or late!) and 
will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters 
('n', 's', 'e', or 'w' only). It will never give you an empty array
 (that's not a walk, that's standing still!).




------ PED:- 0 MIN to 12 MIN --------------


**Input** :an array of single char strings
**Output** : boolean true or false

**Explicit Requirements/Rules/Boundaries**
- Write a method
- that takes an array of single character string representing directions to walk in
- you have to walk a single block in one direction
- one block takes 1 min to walk
- return true if the array of directions provided will take only ten mins and
- you will end up at the same place you started
- otherwise return false


**Implicit Requirements/Rules/Boundaries**
- each string or direction is one block walk
- each string is one min
- total time for the walk should be 10 mins
- so the total number of directions provided should be 10
- string length should be exactly equal to 10
- count of 'n' == 's'
- count of 'e' == 'w'

**Special Terms**
-


**Examples/Test Cases**
[n s n s] or [n n s s]

[n n e e s s w w] == [w s e n]

[e e w w] == [e w e w]

**Questions**
-


**Data Structures**
- input: array
- Output: boolean
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an array of strings
- If the number of elements in the array is equal to 10 and starting point is same as end point
    return true
- otherwise
    return false

**Implementation details**\
- if size of given array == 10 && starting_ending_same?(given array)
    return true
  else
    return false
  end

subprocess - starting_ending_same?(given array)
      if count of 'n' is equal to count of 's' and 
    - if count of 'e' is equal to count of 'w'
        return true


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def is_valid_walk(walk)
  if walk.size == 10 && starting_ending_same?(walk)
    return true
  else
    return false
  end
end

def starting_ending_same?(walk)
  (walk.count('n') == walk.count('s')) && (walk.count('e') == walk.count('w'))
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false