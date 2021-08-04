=begin

The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
 Your method should work with any integer input.

You may not use ruby's Date and Time classes.

- PEDAC

- Write a method that has:
- input: a + or - integer representing the time
- output: time of day in 24 hour format hh:mm
Explicit:
- input integer is + then the time is after midnight
- input integer is - then the time is before midnight
- method should work in any integer format

Implicit:
- If input is 0 then the time is 00:00
- the output should be of string data type

DS:
input: integer
output: string

Algo:

Given a positive or negative integer
- if the number is 0 return "00:00"
- if the number is + and less than 60
  return "00:number"
- if the number is + and greater than 60
  calc the number of hours and minutes using remainder or %
  return "hh:mm"
  if number is - and greater than -60
  return "23: (60 - number)"
  if the number is - and less than -60
    calc the number of hours and minutes using remainder or %
    return "hh:mm"

=end


def time_of_day(minutes)
  while minutes < 0
    minutes += 1440
  end

  delta_minutes = minutes % 1440

  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end



time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"