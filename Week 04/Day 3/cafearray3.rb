#As long as our arrays stay the same length, everything is fine with our cafe menu
#But if either array changes without the corresponding one changing, we'll have problems
#Go back and take an item out of one of the arrays to see what happens

#One solution to this problem would be to put each menu item and its price in an array
#We can do this by creating an array of arrays

menu = [["Coffee", 1.75], ["Tea", 2.00], ["Hot Chocolate", 2.50], ["Muffin", 3.00], ["Scone", 2.00], ["Donut", 2.50]]

puts "Welcome to the Cafe! Would you like to see a menu? y/n"
response = gets.chomp

if response == "y"
  menu.each do |menu_item|
    #for each array in 'menu', [0] is the menu item and [1] is the price
    puts "#{menu_item[0]}: #{sprintf('%.2f', menu_item[1])}"
  end
end

#Let's get the order and total the price, assuming that the customer only wants one of that item
puts "What would you like to order?"
order = gets.chomp

#Ruby will not recognize the variable 'price' outside of the scope of this code block unless we define it
#We need to set it to an empty string in advance so that its scope extended beyond the 'do' block
#Otherwise, we will get an 'undefined local variable or method' error

price = ''

menu.each do |menu_item|
  #If the first item in the subarray matches the order
  if menu_item[0] == order
    #Then get the price of that item
    price = menu_item[1]
  end
end

puts "Your order total is #{sprintf('%.2f', price)}"
