# Write your code here

test_cases = gets.chomp.to_i

test_cases.times do
  n, m = gets.chomp.split(' ').map(&:to_i) # n rows, m columns
  table = Array.new(n)
  n.times do |i|
    table[i] = gets.chomp.split('')
  end

  # case 1 - original table
  borders = []
  table.each do |row|
    borders.concat(row.join('').scan(/(#+)+/))
  end
  
  # case 2 - transpose
  table_T = table.transpose
  table_T.each do |row|
    borders.concat(row.join('').scan(/(#+)+/))    
  end

  puts borders.flatten.map(&:size).max
end
