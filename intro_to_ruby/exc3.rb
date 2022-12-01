a = { one: 1 , two: 2, three:3 }
b = { five:5, six: 6, seve:7 }

c = a.merge(b)
a.merge!(b)
puts a 
puts b 
puts c

c.each {|x, y| puts "Key: #{x}, Value: #{y}"}
c.keys.each {|x| puts x}
c.values.each {|x| puts x}
