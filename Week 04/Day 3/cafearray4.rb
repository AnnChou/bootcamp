#Let's add some more functionality for our customers
#For example, they might want to order more than one kind of menu item
menu = [["Coffee", 1.75], ["Tea", 2.00], ["Hot Chocolate", 2.50], ["Muffin", 3.00], ["Scone", 2.00], ["Donut", 2.50]]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

if response == "y"
  menu.each do |menu_item|
    puts "#{menu_item[0]}: #{sprintf('%.2f', menu_item[1])}"
  end
end

puts "What would you like to order?"
order = gets.chomp

#Maybe our customer wants to order more than one item
#Let's save the number of items to a varible
puts "How many #{order}(s) do you want?"
quantity = gets.chomp

price = ''

menu.each do |menu_item|
  if menu_item[0] == order
    price = menu_item[1]
  end
end

#Here we're calculating the total cost of the order
total_price = price * quantity.to_i
#This method returns the total_price of this part of the order
#We can keep a running total of the price

#Let's allow our customer to order more than one item
puts "Would you like to order anything else? y/n"
continue_order = gets.chomp

while continue_order == 'y'

  puts "What would you like to order?"
  order = gets.chomp

  puts "How many #{order}(s) do you want?"
  quantity = gets.chomp

  price = ''

  menu.each do |menu_item|
    if menu_item[0] == order
      price = menu_item[1]
    end
  end
  total_price += price * quantity.to_i
  puts "Would you like to order anything else? y/n"
  continue_order = gets.chomp
end

puts "Your order total is #{sprintf('%.2f', total_price)}"
