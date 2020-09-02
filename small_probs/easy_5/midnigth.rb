HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60

MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR # 1440


def calculate_time(sign, time)
  if time > MINUTES_IN_DAY # 1440
    mins_relative_to_midnight = time % MINUTES_IN_DAY
    hours = mins_relative_to_midnight / MINUTES_IN_HOUR
    mins = mins_relative_to_midnight % MINUTES_IN_HOUR
  else
    mins_relative_to_midnight = time
    hours = mins_relative_to_midnight / MINUTES_IN_HOUR
    mins = mins_relative_to_midnight % MINUTES_IN_HOUR
  end
  
  case sign
    when '+'
      [hours,mins]
    when '-'
    if mins > 0
      [24 - hours - 1, 60 - mins]
    else
      [24 - hours, 0]
    end
  end
end

def display_time(hours, mins)
  # format('%02d:%02d',hours,mins)
  if hours > 9 && mins > 9
    "#{hours}:#{mins}"
  elsif hours > 9 && mins < 9
    "#{hours}:0#{mins}"
  elsif hours < 9 && mins > 9
    "0#{hours}:#{mins}"
  else
    "0#{hours}:0#{mins}"
  end
end


def time_of_day(time)
  if time < 0
    sign = '-'
    time = -time
  else
    sign = '+'
  end
  
 hours, mins = calculate_time(sign, time)

  display_time(hours, mins)
  
end
    
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"