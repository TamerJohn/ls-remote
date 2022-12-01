# cheecking something
def greeting(name = 'not a normal name', rav = true)
  if rav
    puts "Hi, my name is #{name}"
  else
    puts "wrong"
  end
end

x = 'bbb'
greeting()
greeting(x)
greeting(x, false)

# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})