#Let's put together hashes and arrays so that our customers can get multiple coffees
#We will also move some code to a method so that the script is cleaner

coffee = {
          "small" => 1.50,
          "medium" => 2.25,
          "large" => 3.00
          }

#In this case, we don't need to pass in an argument to the method, so we don't need the parentheses that we used before
#order_coffee is essentially what we had in the previous version of this code
#We definitely want to move this code to a method now because it repeats every time the customer orders another coffee
#One of the basic principles in good code design is DRY: Don't Repeat Yourself!

def order_coffee
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

  puts "Do you want milk, cream or soy milk for your coffee? m/c/s/n"
  liquid = gets.chomp

  if liquid == 'm'
    coffee_order[:liquid] = "milk"
  elsif liquid == 'c'
    coffee_order[:liquid] = "cream"
  elsif liquid == 's'
    coffee_order[:liquid] = "soy milk"
  end

#This method returns the order. We will then append that to an array in the script that keeps track of each order.
  return coffee_order
end

#This method prints out the orders once the customer has finished or requested between orders
#In this case, we are passing in the array of orders to the method
def display_order(array_of_orders)
  #We can print out each order by looping through the array
  array_of_orders.each do |order|
    #This is the same code that we used before to figure out what was in each order
    #By adding in this code, we make sure that the string outputted to the screen makes sense!
    if order.length == 3
      puts "One #{order[:size]} coffee with #{order[:liquid]} and sugar"
    elsif order.length == 2 and order.include?(:sugar)
      puts "One #{order[:size]} coffee with sugar"
    elsif order.length == 2 and order.include?(:liquid)
      puts "One #{order[:size]} coffee with #{order[:liquid]}"
    else
      puts "One #{order[:size]} black coffee"
    end
  end
end
#We do not return any value in this case because we are 'puts'ing the orders instead

puts "Welcome to the cafe!"
puts "Sorry, all we have today is coffee"
puts "Would you like to order a coffee? y/n"

start_order = gets.chomp

#If our customer doesn't want coffee, we don't need to run any of the script. So we exit it here.
if start_order == 'n'
  puts "Okay, have a great day!"
else
  #This array will keep track of each order returned from the order_coffee method
  array_of_orders = []
  #Each order is created with the order_coffee method
  single_order = order_coffee
  #We then push each order into the array_of_orders array
  array_of_orders.push(single_order)
  puts "Would you like to order another coffee? y/n"
  continue_order = gets.chomp

  #This while loop allows our customer to order multiple coffees with different forumlations
  while continue_order == 'y'
    single_order = order_coffee
    #We add each order to the same array
    array_of_orders.push(single_order)

    #Let's give the option to see the order along the way
    puts "Would you like to see your order so far? y/n"
    see_order = gets.chomp
    #We have a method that takes care of this for us, so we can call it here
    if see_order == 'y'
      display_order(array_of_orders)
    end
    puts "Would you like to order another coffee? y/n"
    continue_order = gets.chomp
  end
end

#Once our customer has completed the order, we provide a summary
puts "Here is your order:"
display_order(array_of_orders)

#Then we loop through our array and get the total price of the order
price = 0
array_of_orders.each do |order|
  #We use this information to total the amount using our original coffee hash with prices
  price += coffee[order[:size]]
end
puts "Your total is $#{sprintf('%.2f', price)}"
puts "Thank you for visiting the cafe today! Enjoy your coffee!"
