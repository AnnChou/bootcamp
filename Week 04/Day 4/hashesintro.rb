#Our cafe scripts works pretty well for basic items, but it would be nice to be able to input more information
#For example, a person might want various sizes of coffee
#We could add this to our array of arrays, but Ruby offers a better option called a hash
#A hash is a combination of key/value pairs. So we could make a coffee hash with the prices based on size.

coffee = {
          "small" => 1.50,
          "medium" => 2.25,
          "large" => 3.00
          }

#Hashes are unordered, so we can't call the items in a hash with a number (we did this with our arrays)
#Instead, we use the key to get the value

puts "A small coffee costs " + sprintf('%.2f', coffee["small"])
puts "A medium coffee costs " + sprintf('%.2f', coffee["medium"])
puts "A large coffee costs " + sprintf('%.2f', coffee["large"])

#We can iterate over the hash to get all of the keys and values
#We need two variables with our each do statement this time because we are getting the keys and values

coffee.each do |key, value|
  puts "A #{key} coffee costs #{sprintf('%.2f', value)}"
end

#We could also iterate to get all of the keys

coffee.each do |key, value|
  puts "We have a #{key}-sized coffee"
end

#We can add more values to our hash if needed

coffee[:supersized] = 4.50

coffee.each do |key, value|
  puts "A #{key} coffee costs #{sprintf('%.2f', value)}"
end

#We can update the hash by accessing the key

coffee["supersized"] = 5.00
puts "Due to coffee import costs increasing, a supersized coffee now costs #{sprintf('%.2f', coffee[:supersized])}"
