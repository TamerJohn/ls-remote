def to_zero(x)
  puts x
  to_zero(x - 1) unless x == 0
end  

y = gets.chomp.to_i
to_zero(y)
