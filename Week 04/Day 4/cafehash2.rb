coffee = {
          "small" => 1.50,
          "medium" => 2.25,
          "large" => 3.00
          }

puts "Welcome to the cafe!"
puts "Sorry, all we have today is coffee"
puts "What size coffee do you want? s/m/l"
coffee_size = gets.chomp

coffee_order = {}

if coffee_size == 's'
  coffee_order[:size] = "small"
elsif coffee_size == 'm'
  coffee_order[:size] = "medium"
else
  coffee_order[:size] = "large"
end

puts "Do you want sugar for your coffee? y/n"
sugar = gets.chomp

if sugar == 'y'
  coffee_order[:sugar] = true
end

#Our cafe also offers milk, cream or soy milk
#Let's make a hash that keeps track of what our customer is ordering

puts "Do you want milk, cream or soy milk for your coffee? m/c/s/n"
liquid = gets.chomp

#Rather than making this a boolean as we did with sugar, let's keep track of which liquid the customer wants
if liquid == 'm'
  coffee_order[:liquid] = "milk"
elsif liquid == 'c'
  coffee_order[:liquid] = "cream"
elsif liquid == 's'
  coffee_order[:liquid] = "soy milk"
end

#We now know that if our hash is a certain length, our customer wants additions to the coffee
#If the hash length is 3, then our customer wants coffee with sugar and a liquid
if coffee_order.length == 3
  puts "You have ordered a #{coffee_order[:size]} coffee with #{coffee_order[:liquid]} and sugar"
#If the length is two, then we need to figure out if the customer wants sugar or a liquid
elsif coffee_order.length == 2 and coffee_order.has_key?(:liquid)
  puts "You have ordered a #{coffee_order[:size]} coffee with #{coffee_order[:liquid]}"
elsif coffee_order.length == 2 and coffee_order.has_key?(:sugar)
  puts "You have ordered a #{coffee_order[:size]} coffee with sugar"
else
  puts "You have ordered a black #{coffee_order[:size]} coffee"
end

puts "The total cost is #{sprintf('%.2f', coffee[coffee_order[:size]])}"
