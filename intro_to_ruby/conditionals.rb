puts 'Give a number !'
input = gets.chomp.to_i
if input == 3
  puts 'a is 3!'
elsif input == 4
  puts 'a is 4!'
else
  puts 'a is not 3 or 4!'
end


case input
when 3 
  puts 'a = 3'
when 4
  puts 'a = 4'
else
  puts 'a is not 3 or 4'
end