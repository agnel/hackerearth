n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

a_min = a.min # minimum of all in `a`
steps = 0
i = 0 # index pointer

while i < n

  # set `a[i] = a[i] - b[i]` till `a[i] > min`
  while a[i] > a_min
    a[i] -= b[i]
    steps += 1
  end

  # if a[i] is less than min then
  # set it as the minimum and
  # reset index pointer
  if a[i] < a_min
    a_min = a[i]
    # to reset i = 0, we set i = -1 here
    # because we are incrementing it already 
    # at the bottom
    i = -1
  # else if a[i] less than 0
  # then it is not possible
  elsif a[i] < 0
    # since a[i] i.e. #{a[i]} < 0, set steps = -1 and break the loop
    steps = -1
    break
  end

  # go to next a[i]
  # by incrementing index pointer
  i += 1
end

print steps
