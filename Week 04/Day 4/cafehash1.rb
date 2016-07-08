#We are going to write a version of our cafe script that uses hashes instead of arrays
#Let's start by making a coffee script
#We will begin with the prices, then add some more options for our coffee

coffee = {
          "small" => 1.50,
          "medium" => 2.25,
          "large" => 3.00
          }

puts "Welcome to the cafe!"
puts "Sorry, all we have today is coffee"
puts "What size coffee do you want? s/m/l"
coffee_size = gets.chomp
coffee_order = {} #We are creating a new hash here to keep track of our order

#We can also use symbols in our hash. Symbols are shown with : before the variable name
if coffee_size == 's'
  coffee_order['size'] = "small"
elsif coffee_size == 'm'
  coffee_order['size'] = "medium"
else
  coffee_order['size'] = "large"
end
#Try a binding pry here to see what is in coffee_order. The key is the size, the value is small/medium/large depending on which choice you made

#We can also expand the hash to keep more information
#Let's see if our customer wants sugar
puts "Do you want sugar for your coffee? y/n"
sugar = gets.chomp

#If the customer wants sugar, let's add that key to the hash. The value in this case will be 'true'
if sugar == 'y'
  coffee_order['sugar'] = true
end

#Let's check to see if our customer wants sugar, then print the order out
#We can do this by looking at the keys of the hash and see if sugar is included
#Sugar is a boolean (true/false) value. If has_key is true, our customer wants sugar

if coffee_order.has_key?('sugar')
  puts "You have ordered a #{coffee_order['size']} coffee with sugar"
else
  puts "You have ordered a black #{coffee_order['size']} coffee"
end

#We can get the cost by passing the size from the coffee_order hash to our coffee array
puts "Your total cost is #{sprintf('%.2f', coffee[coffee_order['size']])}"
