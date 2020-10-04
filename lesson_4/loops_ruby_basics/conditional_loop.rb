process_the_loop = [true, false].sample

# if process_the_loop
#   loop do 
#     p "the loop was processed!"
#     break
#   end
# else
#   p "the loop wasnt processed"
# end

loop do
    p process_the_loop
  break unless process_the_loop
  p "the loop was executed!"
  process_the_loop = [true, false].sample
end
