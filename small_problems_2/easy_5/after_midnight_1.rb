=begin

The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns
the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

------ PED:- 0 MIN to 12 MIN --------------

**The Problem -**
-


**Input** :a +tive or -tive integer
**Output** : string representing the time of day in 24 hr format "hh:mm"

**Explicit Requirements/Rules/Boundaries**
- time of day can be represented as the number of minutes before or after midnight
- If the number of minutes is positive, the time is after midnight.
- if the number of minutes is negative, the time is before midnight.
- define a method that takes time in this minute based format
- returns the time of day in 24 hour format (hh:mm)
- Your method should work with any integer input
- not use ruby's Date and Time classes.

- 1440 mins/day
- -1437 -> 1440-1437 = 3
- -3 -> 1440 - 3 = 1437 -> 1437/60 = 23hrs, 1437%60 = 57 mins
- 35 -> 35/60 --> 0 hrs, 35%60 -> 35 mins -> 00:35
- 3000 -> 3000%1440 = 120 mins -> 120 / 60 = 2hrs, 120%60 = 0 mins -> 02:00
- 800 -> 800 / 60 = 13hrs, 800%60 = 20mins --> 13:20
- -4231 -> 4231 % 1440 = - 1351 mins -> 1440 - 1351 = 89 -> 89/60 = 1hrs, 89%60 = 29 -> 01:29

- if -1440 < mins < 0 ->
- 1440 - mins = no. of mins after midnight
- hrs = mins_after_midnight / 60, mins = mins_after_midnight%60

- if 0 < mins < 1440
- hrs = mins_after_midnight / 60, mins = mins_after_midnight%60

- if mins > 1440
  - remaining_mins_after_multiple_days = mins % 1440
  - hrs = mins_after_midnight / 60, mins = mins_after_midnight%60

- if mins < -1440
  - remaining_mins_after_multiple_days = -mins % 1440 = minutes_before_midnight
  - minutes_after_mignight = 1440 - minutes_before_midnight
  - hrs = mins_after_midnight / 60, mins = mins_after_midnight%60

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input: integer
- Output: string
- Intermediate:
- Storage:

--------------- A:- 18 MIN to 20 MIN------------

**Algorithm**
- normalize minutes to 0 thru 1439
- hrs = mins_after_midnight / 60, mins = mins_after_midnight%60
- format the result "hh:mm"


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def
