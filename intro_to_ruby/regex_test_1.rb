def has_a_invalid_char?(string) 
  if / /.match(string)
    puts 'got one!'
  else
    puts 'nana, safeo'
  end
end

puts 'checking for press space'
example = gets.chomp
has_a_invalid_char?(example)


def has_a_invalid_char_2?(string)  # doesn't work due to characters having actual uses 
  x = "!@#%^*()_.{}"               # setting a variable doesn't work either inside the / / doesn't have the scope 
  if /x/.match(string)
    puts 'got one!'
  else
    puts 'nana, safeo'
  end
end

puts 'checking for other invalids'
has_a_invalid_char_2?(example)

