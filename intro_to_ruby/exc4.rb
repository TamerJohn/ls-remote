def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }



def contain_lab?(string)
  if /lab/.match(string.downcase)
    puts "got 'lab' in #{string}"
  else
    puts "got no 'lab' in #{string}"
  end
end

contain_lab?('laboratory')
contain_lab?("experiment")
contain_lab?("Pans Labyrinth")
contain_lab?("elaborate")
contain_lab?('polar bear')

