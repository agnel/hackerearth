word = gets.chomp

if word.size > 20
  print "No"
else
  zs, os = word.scan(/(z+)(o+)/i).first
  print zs.size * 2 == os.size ? "Yes" : "No"
end
