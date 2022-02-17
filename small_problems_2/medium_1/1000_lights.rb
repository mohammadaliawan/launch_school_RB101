=begin

You have a bank of switches before you, numbered from 1 to n.
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches 
and toggle every one of them. 
You go back to the beginning, and on this second pass, 
you toggle switches 2, 4, 6, and so on. On the third pass, 
you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, 
and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer, number of switches
**Output** : array of number, signifying the positions of the switches which are on

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a positive integer as argument, number of switches
- return an array of switches/lights which are left on after n repetitions
  - first round: toggle all switches
  - second round: toggle every switch at multiples of 2 positions
  - third round: toggle every switch at multiples of 3 positions
  - nth round: toggle swtich at nth position

  [false,false,false,false,false]
  
  [true,true,true,true,true]
  [true, false, true, false, true]


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output
**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a positive integer, n
- create an array of n elements (lights), each element being the object false, signifying all lights are initiallu off
- For passes from 1 to n
  - for elements in lights array 
    if current positions is a multiples of current pass number
    - change the current boolean to its opposite value
- Find the positions of of the objects which are true in the lights array
- return the positions of the on switches


**Implementation details**
- create an array of n elements (lights)
  - for integers from 1..n 
    - append the false object to the lights array

- multiples of current pass number
  - position = current_index + 1
  - if the remainder of position / current_pass_number == 0
      it is a multiple

-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def create_array(n)
  (1..n).each_with_object([]) do |_, lights|
    lights << false
  end 
end

def multiple_of?(ind, pass_number)
  position = ind + 1

  position % pass_number == 0
end

def find_on(lights)
  on = []

  lights.each_with_index do |light, ind|
    if light
      on << (ind + 1)
    end
  end
  on
end

def toggle_lights(n)
  lights = create_array(n)

  (1..n).each do |pass_number|
    lights.each.with_index do |light, ind|
      if multiple_of?(ind, pass_number)
        lights[ind] = !light
      end
    end
  end

  find_on(lights)
end




p toggle_lights(5) #== [1,4]
p toggle_lights(10) #== [1, 4, 9]
p toggle_lights(10000)


