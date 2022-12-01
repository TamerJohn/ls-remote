puts "What's your first name name?"
name = gets.chomp.to_s
puts "What's your last name name?"
l_name = gets.chomp.to_s
puts "Hello, #{name} #{l_name}!"
10.times { puts name + ' ' + l_name}
