loop do
  puts "I'll do it again! Unless... N ?"
  answer = gets.chomp
  if answer.upcase == 'N'
    break
  end
end