def greet(name)
  "Greetings, #{name}!"
end

print greet('Mal')

def scream(words)
  words = words + "!!!!"
  puts words
end # still nil

scream("Yippeee")