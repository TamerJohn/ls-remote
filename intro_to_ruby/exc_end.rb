arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each_with_index do |element, index|
  if element > 5
    # puts element
  else
    next
  end
end

arr_new = arr.select { |x| x.odd? }
# puts arr_new

arr << 11
arr.unshift(0)
#p arr
arr.pop
arr << 3
#p arr
arr.uniq!
# =>p arr

newie = {
  :one => 1,
  two: 2 
}

h = {a:1, b:2, c:3, d:4}
# puts h[:b]
h[:e] = 5
# puts h
h.each do |key, value|
  if value < 3.5 
    h.delete(key)
  else
    next
  end
end
# puts h


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }



contact_data.each do |x|
  if /sally/.match(x[0].downcase)
    x.each do |info|
      if /@/.match(info)
        contacts["Sally Johnson"][:email] = info
      elsif /dr/.match(info.downcase) || /road/.match(info.downcase) || /st/.match(info.downcase)
        contacts["Sally Johnson"][:adress] = info
      else
        contacts["Sally Johnson"][:'phone number'] = info
      end
    end
  elsif /joe/.match(x[0].downcase)
    x.each do |info|
      if /@/.match(info)
        contacts["Joe Smith"][:email] = info
      elsif /dr/.match(info.downcase) || /road/.match(info.downcase) || /st/.match(info.downcase)
        contacts["Joe Smith"][:adress] = info
      else
        contacts["Joe Smith"][:'phone number'] = info
      end
    end
  end
end

variable = 'daasdasd'
#puts 'works ?' unless /#{variable}/.match('dasdasd')

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |x| x.start_with? ("s")} # if you add 'w', doesn't work cuz of the space between ? and 's'
#puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees'] 
arr.delete_if { |x| x.start_with?("s", "w")}
#puts arr

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
b = []

a.each { |x| b << x.split} #each way
b.flatten!

a.map! { |x| x.split } #map/collect way
a.flatten!


contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(key, value),index|
  fields.each do |field|
    contacts[key][field] = contact_data[index].shift #contacts[key] can be replaced with: value, why?
  end
end
#puts contacts
p contact_data
