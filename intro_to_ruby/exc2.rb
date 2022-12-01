example = gets.chomp
def cap(string)
  if string.length > 10
    string.upcase!
  else
    string
  end
end

puts cap(example)

x = example.length

case x
when 50 
  puts "x is 50"
when 51 
  puts "x is 51"
when 0...50
  puts "x is < 50"
when 52..100
  puts "c is > 51"
end

if x < 0
  puts 'x is negative'
elsif x < 50
  puts 'x is less than 50'
elsif x < 100
  puts 'x is between 51 and 100'
else
  puts 'x is greater than 100'
end