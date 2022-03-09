# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.

# Examples:

#recipe, ingredients avaliable

# // must return 2
# cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200}); 
# // must return 0
# cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000}); 
# =end

# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2

# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0

# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0

# p cakes({"eggs"=>4, "flour"=>400},{}) == 0

# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1

=begin

------ PE:- 0 MIN to 5 MIN --------------


**Input** : two hashes
**Output** : integer

**Explicit Requirements/Rules/Boundaries**
- write a method
- which takes the recipe (hash) and the available ingredients (hash)
- and returns the maximum number of cakes Pete can bake (integer)
- Ingredients that are not present in the objects, can be considered as 0- > default value is 0
-

**Implicit Requirements/Rules/Boundaries**
- the keys present in recipe must be present in ingredient hash, otherweise return 0
- the values for the keys in recipe must be <= values for respective keys in ingrredients
- igredients hash is empty then return 0

**Special Terms**
-


**Examples/Test Cases**
# p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2

# p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0

# p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0

# p cakes({"eggs"=>4, "flour"=>400},{}) == 0

# p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1



**Questions**
-


--------------- DA:- 6 MIN to 15 MIN------------



**Data Structures**
- input: hashes
- Output: integer
- Intermediate:
- Storage: arrays

- if ingredient has empty return 0
- check if all keys in recipe are included in ingredients, if not return 0
- check the value for keys inrecipe are less than or equal to value for keys in ingredients
- 

**High Level Algorithm**
- Given two hashes recipe and ingredients
- if ingredient is empty return 0
- assign default values in ingredients to 0
- else
  - init a new array # num_cakces
  - iterate over the key value pairs in recipe
    - for each key divide the value in ingredient by value in recipe
    - if the above result returns 0 for any key return 0
    - save to a new array
  - return the least value in num_cakes


**Implementation details**
-


-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent**
=end

def cakes(recipe, ingredients)
  return 0 if ingredients.empty?
  
  ingredients.default = 0
  
  num_cakes = []
  
  recipe.each do |item, quantity|
    min_cakes = ingredients[item] / quantity
    
    if min_cakes == 0
      return 0
    else
      num_cakes << min_cakes
    end
  end
  num_cakes.min
end

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2

p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15, "oil"=>20}) == 0

p cakes({"eggs"=>4, "flour"=>400},{}) == 0

p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1}) == 1
