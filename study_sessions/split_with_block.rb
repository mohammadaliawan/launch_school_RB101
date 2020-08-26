hash = Hash.new("")

str = "I am a software engineer!"

limit = 1

str.split(""){ |sub| hash[sub] = sub.length }