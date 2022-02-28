=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and
returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°)
to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds.
A degree has 60 minutes, while a minute has 60 seconds.


dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

------ PED:- 0 MIN to 12 MIN --------------


**Input** : a float representing angle from 0 to 360 deg
**Output** : a string representing the angle in degrees, mins, secs,

**Explicit Requirements/Rules/Boundaries**
- wrtie a method
- takes a floating point number
- which reprsents an angle between 0 and 360 degs
- return a string
- which represents that angle in degrees, mins, secs
- ° to represent degrees,
- ' to represent mins
- " to represent secs
- A degree has 60 minutes, while a minute has 60 seconds.

**Implicit Requirements/Rules/Boundaries**
- 1 degree has 60*60 = 3600 secs
- if input is an integer -> output x deg 00' 00"
- if input is 0 -> output 0°00'00"
- if input 360 -> 360°00'00" or 0°00'00"

**Special Terms**
-


**Examples/Test Cases**
- input: 76.73
- Output: 76°43'48"
  - how do we calc mins and secs
    - the number before the decimal is how many degrees there are # to_i
    - 0.73 -> 0.73*60 = 43.8 mins
      - the number before the decimal is how many mins there are # to_i
    - 0.8*60 = 48 sec



**Questions**
-


**Data Structures**
- input: integer or a float
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an integer or a float
- Find the degress
- find the mins
- find the secs
- combine the values for degrees, mins and secs 30°00'00"
- return the resulting string


**Implementation details**
- Find the degrees
  - whole degrees = convert the given integer or float to an integer # to_i
- find the mins
  - mins_in_degrees = given number - whole_degrees
  - mins = mins_in_degrees * 60
  - whole_mins = mins.to_i
- find the secs
  - secs_in_mins = mins - whole_mins
  - secs = secs_in_mins * 60
  - whole_secs = secs.to_i
- combine the values for degrees, mins and secs 30°00'00"

-
-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# def dms(number)
#   whole_degrees = number.to_i

#   whole_mins = ((number - whole_degrees)*60).to_i

#   whole_secs = ((((number - whole_degrees)*60) - whole_mins)*60).to_i

#   "#{whole_degrees}\xC2\xB0 #{whole_mins}' #{whole_secs}"
# end


DEGREE = "\xC2\xB0"
SECONDS_PER_DEGREE = 3600
MINUTES_PER_DEGREE = 60
SECONDS_PER_MIN = 60


def dms(degrees_float)
  total_seconds =(degrees_float * SECONDS_PER_DEGREE).round

  degrees, remaining_secs = total_seconds.divmod(SECONDS_PER_DEGREE)

  mins, secs = remaining_secs.divmod(SECONDS_PER_MIN)

  format(%(%03d#{DEGREE}%03d'%03d"), degrees, mins, secs)
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773)# == %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")