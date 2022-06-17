n = gets.chomp.to_i # size of the array
arr = gets.chomp # elements of the array

last_digit = arr[-1].to_i
if last_digit == 0
  print "Yes"
else
  print "No"
end
